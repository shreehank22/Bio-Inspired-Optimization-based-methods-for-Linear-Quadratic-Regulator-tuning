# **Optimization of LQR Controller Gains using Metaheuristic Algorithms**

This repository presents the implementation of various metaheuristic optimization techniques to tune the **Linear Quadratic Regulator (LQR)** controller gains for systems with **time delays** and **aerodynamic disturbances**. The goal is to enhance control performance under practical constraints by automating the gain selection process.

---

## **Project Overview**

Traditional LQR control design depends on manually selected weight matrices $Q$ and $R$, which can be suboptimal for real-world systems with nonlinearities, delays, and disturbances. In this project, the following global optimization algorithms are applied to optimize LQR performance:

* Genetic Algorithm (GA)
* Particle Swarm Optimization (PSO)
* Simulated Annealing (SA)
* Custom heuristic search techniques

These methods are tested on a longitudinal flight dynamics model with **Dryden turbulence**, simulated using a custom Simulink model.

---

## **Repository Structure**

```bash
├── Codes/
│   ├── Genetic_Algorithm.m           # GA implementation for LQR tuning
│   ├── Particle_Swarm.m              # PSO-based LQR optimization
│   ├── Simulated_annealing.m         # SA algorithm implementation
│   ├── Optimization_LQR.m            # LQR setup, fitness eval, call optimizer
│   └── drydenmodel.m                 # Turbulence model for aircraft simulation

├── Simulink Files/
│   └── Final_PAPER2_wtdelay_LQR.slx  # Full nonlinear aircraft model with LQR + delay

├── README.md                         # Project description and instructions
```

---

## **Setup & Execution**

### **Software Requirements**

* MATLAB R2021a or later
* Control System Toolbox
* Simulink

### **Steps to Run**

1. Open `Optimization_LQR.m` to select the algorithm and launch optimization.
2. Run `Genetic_Algorithm.m`, `Particle_Swarm.m`, or `Simulated_annealing.m` independently for individual tests.
3. Simulate the optimized gains in `Final_PAPER2_wtdelay_LQR.slx`.
4. Use `drydenmodel.m` to inject atmospheric turbulence into the model.

---

## **Objectives & Contributions**

* Compare different optimization algorithms for LQR gain tuning.
* Evaluate robustness under **actuator delay** and **Dryden wind gust model**.
* Automate weight tuning using population-based search methods.
* Validate control performance in a **realistic aircraft dynamics environment**.

---

## **Expected Outcomes**

* Reduced settling time and overshoot
* Improved disturbance rejection
* Optimized control effort with better energy efficiency

---

##  **Future Work**

* Extend to MIMO systems and full 6-DOF UAV models.
* Integrate Deep Reinforcement Learning for adaptive LQR tuning.
* Implement GUI-based controller synthesis tool.

---

## **License**

This repository is released under the [MIT License](LICENSE), allowing academic and research use.
