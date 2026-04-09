# Model Predictive Control (MPC) for Autonomous Ground Vehicles

## Overview
This project focuses on designing an Advanced Driver Assistance System (ADAS) using Model Predictive Control (MPC) for autonomous ground vehicles. The system ensures safe and efficient vehicle behavior under variable speed limits and dynamic traffic conditions.

## Objective
- Enable an autonomous vehicle (ego vehicle) to track reference trajectories  
- Maintain safe distance from a leading vehicle (Adaptive Cruise Control - ACC)  
- Respect variable speed limits imposed by infrastructure (RSU)  
- Optimize vehicle control under constraints  

## System Architecture
- Ego Vehicle (controlled vehicle)  
- Leader Vehicle (reference behavior)  
- Controller: MPC and PID comparison  
- Reference Inputs: Speed limits and trajectory  

## Tools & Technologies
- MATLAB  
- Simulink  
- MPC Toolbox  
- Control System Design  

## Methodology

### Vehicle Modeling
- Developed **non-linear vehicle dynamics model**  
- Applied **feedback linearization** for control design  
- Derived linearized model for controller implementation :contentReference[oaicite:1]{index=1}  

### Control Strategy

#### Model Predictive Control (MPC)
- Implemented MPC for optimal control under constraints  
- Optimized control inputs over a finite prediction horizon  
- Considered:
  - System dynamics  
  - Constraints  
  - Future predictions  

#### PID Controller (Baseline)
- Implemented PID for comparison  
- Evaluated performance differences with MPC  

### Adaptive Cruise Control (ACC)
- Designed system to maintain safe distance from leading vehicle  
- Used leader vehicle velocity as input signal  
- Ensured collision avoidance and smooth following behavior  

### Parameter Tuning
- Tuned key MPC parameters:
  - Constraints  
  - Weights  
  - Scale factors  
- Analyzed system response under different configurations :contentReference[oaicite:2]{index=2}  

## Simulation

- Simulated system in Simulink environment  
- Tested with varying:
  - Speed profiles  
  - Traffic conditions  
  - Controller parameters  

- Evaluated:
  - Position tracking  
  - Velocity tracking  
  - Acceleration response  

## Results

- MPC outperformed PID in handling constraints and dynamic conditions  
- Achieved stable trajectory tracking and smooth velocity control  
- Maintained safe distance from leader vehicle under varying speeds  
- System performance improved with optimized weight and scale factors :contentReference[oaicite:3]{index=3}  

## Key Features
- Advanced control using MPC  
- Integration with Adaptive Cruise Control (ACC)  
- Constraint-based optimization  
- Realistic vehicle dynamics modeling  

## Applications
- Autonomous driving systems  
- Advanced Driver Assistance Systems (ADAS)  
- Intelligent vehicle control  

## Future Work
- Integration with real-time sensor inputs  
- Extension to multi-vehicle coordination  
- Implementation in hardware-in-the-loop (HIL) systems  

## Author
Sudip Kishan Sarker  
MSc Autonomous Vehicle Engineering  
University of Naples Federico II
