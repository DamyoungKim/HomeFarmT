<template>
  <div :key="componentKey">
    <Navbar :title="nowMonth + '월 스케줄'" :left_icon="true" :right_text="''" :left_push="'Schedule'" :right_push="''" />
    <div class="ScheduleNew-container">
      <p class="title">예약 일자</p>
      <div class="date-time">
        <b-form-input v-model="dateTime" type="datetime-local"></b-form-input>
      </div>

      <p class="title">스케줄</p>
      <div class="schedule">
        <button class="item shadows" @click="title='감시하기'" :class="{'item-active' : title==='감시하기'}">감시하기</button>
        <button class="item shadows" @click="title='제어하기'" :class="{'item-active' : title==='제어하기'}">제어하기</button>
      </div>

      <div v-if="title==='감시하기'" class="box">
        <p class="title">경로 선택</p>
        <div class="path shadows">
          <font-awesome-icon @click="routeIndex -= 1" icon="chevron-left"/>
          <span id="selectRoute">{{ route[routeIndex % 3] }}</span>
          <font-awesome-icon @click="routeIndex += 1, routeClick()" icon="chevron-right"/>
        </div>
      </div>

      <div v-if="title==='제어하기'" class="box">
        <p class="title">기기 선택</p>
        <div class="control shadows">

          <img src="@/assets/icons/devices/light.svg" alt="light">
          
          <div class="text-group">
            <span class="name">형광등</span>
            <span class="position">부엌</span>
          </div>
          
          <img src="@/assets/icons/switch.svg" alt="switch" class="switch">
        </div>
      </div>

      <div v-if="!title" class="box"></div>

      <button class="my-btn" v-if="error" @click="setSchedule()">스케줄 추가</button>
      <button class="my-btn-err" v-else>스케줄 추가</button>
    </div>
  </div>
</template>

<script>
import Navbar from '@/components/common/Navbar.vue'
import gql from 'graphql-tag'


export default {
  name: 'ScheduleNew',
  components: {
    Navbar,
  },
  data() {
    return {
      componentKey: 0,
      nowMonth: new Date().getMonth() + 1,
      dateTime: '',
      title: '',
      description: '',
      status: true,
      route: ['1번 경로', '2번 경로', '3번 경로'],
      routeIndex: 99,
      selectRoute: '1번 경로',
      error: false,
    }
  },
  methods: {
    routeClick() {
      this.selectRoute = this.route[this.routeIndex % 3]
    },
    setSchedule() {
    this.$apollo.mutate({
      mutation: gql`mutation ($createScheduleScheduleTime: String!, $createScheduleScheduleTitle: String, $createScheduleScheduleDesc: String, $createScheduleScheduleStatus: String) {
        createSchedule(
          schedule_time: $createScheduleScheduleTime, 
          schedule_title: $createScheduleScheduleTitle, 
          schedule_desc: $createScheduleScheduleDesc, 
          schedule_status: $createScheduleScheduleStatus
          ) {
            scheduleid
            schedule_time
            schedule_title
            schedule_desc
            schedule_status
          }
        }
      `, 
      variables: {
        createScheduleScheduleTime: this.dateTime,
        createScheduleScheduleTitle: this.title,
        createScheduleScheduleDesc: this.selectRoute,
        createScheduleScheduleStatus: "ON"
      }
      })
      .then(() => {
        alert('일정이 추가되었습니다')
        window.location.reload()
      })
      .catch((err) => {
        console.log(err, 'no')
      })
    }
  },
  computed: {
    errorCheck() {
      return this.dateTime && (this.title && this.selectRoute)
    }
  },
  watch: {
    errorCheck(check) {
      if (check) {
        this.error = true
      }
    },
  }
}
</script>

<style lang="scss" scoped>
  @import './ScheduleNew.scss';
</style>