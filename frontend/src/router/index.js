import Vue from 'vue'
import VueRouter from 'vue-router'
import Signup from '../views/user/Signup.vue'
import Login from '../views/user/Login.vue'
import Home from '../views/Home.vue'
import IoT from '../views/IoT.vue'
import Schedule from '../views/Schedule.vue'
import ScheduleNew from '../views/ScheduleNew.vue'
import Patrol from '../views/Patrol.vue'
import PatrolSetting from '../views/PatrolSetting.vue'
import Test from '../views/Test.vue'

Vue.use(VueRouter)

const routes = [
  {
    path: '*',
    redirect: '/'
  },
  {
    path: '/',
    redirect: Home,
  },
  {
    path: '/signup',
    name: 'Signup',
    component: Signup
  },
  {
    path: '/login',
    name: 'Login',
    component: Login
  },
  {
    path: '/home',
    name: 'Home',
    component: Home
  },
  {
    path: '/iot',
    name: 'IoT',
    component: IoT
  },
  {
    path: '/schedule',
    name: 'Schedule',
    component: Schedule
  },
  {
    path: '/schedule/new',
    name: 'ScheduleNew',
    component: ScheduleNew
  },
  {
    path: '/patrol',
    name: 'Patrol',
    component: Patrol
  },
  {
    path: '/patrol/setting',
    name: 'PatrolSetting',
    component: PatrolSetting
  },
  {
    path: '/test',
    name: 'Test',
    component: Test
  },
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

export default router
