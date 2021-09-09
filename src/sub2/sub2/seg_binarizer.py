#!/ C:\Python37\python.exe

import numpy as np
import cv2
import rclpy
from rclpy.node import Node

from sensor_msgs.msg import CompressedImage


# segmentation image object detection node의 전체 로직 순서
# 1. 노드에 필요한 publisher, subscriber, timer 정의
# 2. compressed image 받기
# 3. bgr 이미지의 binarization
# 4. 물체의 contour 찾기
# 5. 물체의 bounding box 좌표 찾기
# 6. 물체의 bounding box 가 그려진 이미지 show


class IMGParser(Node):

    def __init__(self):
        super().__init__(node_name='image_parser')

        # 로직 1. 노드에 필요한 publisher, subscriber, timer 정의
        self.subscription = self.create_subscription(
            CompressedImage,
            '/image_jpeg/compressed',
            self.img_callback,
            10)

        #초기 이미지를 None으로 초기화한다
        self.img_bgr = None

        self.timer_period = 0.03

        self.timer = self.create_timer(self.timer_period, self.timer_callback)
        

    def img_callback(self, msg):

        # 로직 2. compressed image 받기
        np_arr = np.frombuffer(msg.data, np.uint8)
        self.img_bgr = cv2.imdecode(np_arr, cv2.IMREAD_COLOR)


    def find_bbox(self):

        """
        # 로직 3. bgr 이미지의 binarization
        # 지갑, 키 등의 물체에 대한 bgr 값을 알고, 이 값 범위에 해당되는
        # cv2.inRange 함수를 써서 각 물체에 대해 binarization 하십시오.
        """
        lower_wal = (17, 250, 241) # (25, 22, 19) (22, 255, 246)
        upper_wal = (27, 256, 251) # (25, 22, 19)
        lower_bp = (99, 211, 241) # (98, 90, 77) (104, 216, 246)
        upper_bp = (109, 221, 251) # (98, 90, 77)
        lower_rc = (99, 211, 208) # (39, 35, 25) (104, 216, 213)
        upper_rc = (109, 221, 218) # (39, 35, 25)
        lower_key = (16, 13, 11) # (21, 18, 16)
        upper_key = (26, 23, 21) # (21, 18, 16)

        self.img_wal = cv2.inRange(self.img_bgr, lower_wal, upper_wal)

        self.img_bp = cv2.inRange(self.img_bgr, lower_bp, upper_bp)

        self.img_rc = cv2.inRange(self.img_bgr, lower_rc, upper_rc)

        self.img_key = cv2.inRange(self.img_bgr, lower_key, upper_key)

        

        """
        # 로직 4. 물체의 contour 찾기
        # 지갑, 키 등의 물체들이 차지한 픽셀만 흰색으로 이진화되어 있는 이미지에 대해서,
        # 흰색 영역을 감싸는 contour들을 구하십시오.
        # cv2.findContours를 가지고 
        """
        contours_wal, _ = cv2.findContours(self.img_wal, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)

        contours_bp, _ = cv2.findContours(self.img_bp, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)

        contours_rc, _ = cv2.findContours(self.img_rc, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)

        contours_key, _ = cv2.findContours(self.img_key, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)

        

        """
        # 로직 5. 물체의 bounding box 좌표 찾기
        """
        self.find_cnt(contours_wal)
        
        self.find_cnt(contours_bp)
        
        self.find_cnt(contours_rc)
        
        self.find_cnt(contours_key)

        

    def find_cnt(self, contours):

        """
        # 로직 5. 물체의 bounding box 좌표 찾기
        # 지갑, 키 등의 물체들의 흰색 영역을 감싸는 contour 결과를 가지고
        # bbox를 원본 이미지에 draw 하십시오.
        """
        for cnt in contours:
            xy_min = np.min(cnt, axis=0)
            xy_length = np.max(cnt, axis=0) - xy_min
            print('x_min, y_min, w, h:\t', xy_min[0][0], xy_min[0][1], xy_length[0][0], xy_length[0][1])
            # print('test:\t', xy_max-xy_min)
            x, y, w, h = xy_min[0][0], xy_min[0][1], xy_length[0][0], xy_length[0][1]

            cv2.rectangle(self.img_bgr, (x,y),(x+w,y+h),(0,255,255), 2)

             


    def timer_callback(self):

        if self.img_bgr is not None:
            
            # 이미지가 ros subscriber로 받고 None이 아닌 array로 정의됐을 때,
            # object에 대한 bbox 추정을 시작.             
            self.find_bbox()

            # 로직 6. 물체의 bounding box 가 그려진 이미지 show
            cv2.imshow("seg_results", self.img_bgr)

            cv2.waitKey(1)
        else:
            pass

        
def main(args=None):

    rclpy.init(args=args)

    image_parser = IMGParser()

    rclpy.spin(image_parser)


if __name__ == '__main__':

    main()