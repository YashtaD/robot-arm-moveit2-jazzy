# Robotic Arm Modelling and Motion Planning using ROS 2 Jazzy and MoveIt 2

## Project Overview

This project focuses on the modelling, visualization and motion planning of a robotic arm using ROS 2 Jazzy and MoveIt 2.

The robot was first modelled in SolidWorks and exported as STL files. A URDF/XACRO robot description was then created and integrated with MoveIt 2 for motion planning and trajectory execution.

The project demonstrates:

- Robot modelling
- URDF/XACRO development
- ROS 2 package creation
- MoveIt 2 configuration
- Motion planning
- Trajectory execution
- RViz visualization

---

## Repository Structure

```text
robot_ws/
├── src/
│   ├── robot_arm_description/
│   │   ├── meshes/
│   │   ├── urdf/
│   │   ├── launch/
│   │   └── config/
│   │
│   └── robot_arm_moveit_config/
│       ├── config/
│       ├── launch/
│       └── srdf/
│
└── README.md
```

---

## Software Requirements

- Ubuntu 24.04
- ROS 2 Jazzy
- MoveIt 2
- RViz2
- ros2_control

---

## Build Instructions

Clone the repository:

```bash
git clone https://github.com/YashtaD/robot-arm-moveit2-jazzy.git
```

Move to workspace:

```bash
cd robot_ws
```

Build:

```bash
colcon build --symlink-install
```

Source workspace:

```bash
source install/setup.bash
```

---

## Launch Robot Model

```bash
ros2 launch robot_arm_description display.launch.py
```

---

## Launch MoveIt 2

```bash
ros2 launch robot_arm_moveit_config demo.launch.py
```

---

## Features

- Robot visualization in RViz2
- Motion planning with MoveIt 2
- Gripper control
- Joint trajectory execution
- Collision checking

---

## Author

Yashta Dhunnoo

Master Artificial Intelligence and Robotics

University of Mascareignes

2026
