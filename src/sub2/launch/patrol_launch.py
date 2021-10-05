from launch import LaunchDescription
from launch_ros.actions import Node

def generate_launch_description():
    return LaunchDescription([

        Node(
            package='sub2',
            node_executable='odom',
            node_name='odom'
        ),

        Node(
            package='sub2',
            node_executable='path_pub',
            node_name='path_pub'
        ),

        Node(
            package='sub2',
            node_executable='patrol_client',
            node_name='patrol_client'
        ),

        Node(
            package='sub2',
            node_executable='make_path',
            node_name='make_path'
        ),
        
    ])



