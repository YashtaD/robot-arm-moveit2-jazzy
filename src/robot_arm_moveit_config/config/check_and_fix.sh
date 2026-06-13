#!/bin/bash
# Run this script to diagnose exactly why Execute doesn't move the robot
# Usage: bash check_and_fix.sh

echo "═══════════════════════════════════════════════════"
echo "STEP 1 — Check what action servers are available"
echo "═══════════════════════════════════════════════════"
ros2 action list 2>/dev/null
echo ""

echo "═══════════════════════════════════════════════════"
echo "STEP 2 — Check ros2_control.xacro hardware type"
echo "═══════════════════════════════════════════════════"
cat ~/robot_ws/src/robot_arm_moveit_config/config/robot_arm.ros2_control.xacro \
    | grep -E "plugin|hardware|GenericSystem|mock" 2>/dev/null || \
cat ~/robot_ws/src/robot_arm_description/config/robot_arm.ros2_control.xacro \
    | grep -E "plugin|hardware|GenericSystem|mock" 2>/dev/null
echo ""

echo "═══════════════════════════════════════════════════"
echo "STEP 3 — Check moveit_controllers.yaml"
echo "═══════════════════════════════════════════════════"
cat ~/robot_ws/src/robot_arm_moveit_config/config/moveit_controllers.yaml
echo ""

echo "═══════════════════════════════════════════════════"
echo "STEP 4 — Check initial_positions.yaml"
echo "═══════════════════════════════════════════════════"
cat ~/robot_ws/src/robot_arm_moveit_config/config/initial_positions.yaml
echo ""