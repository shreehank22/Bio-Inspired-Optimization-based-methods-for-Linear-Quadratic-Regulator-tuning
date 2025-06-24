🧬 Bio-Inspired Optimization of LQR for Cruise Missile Control
This repository presents an intelligent control framework that applies bio-inspired optimization algorithms—including Genetic Algorithm (GA) and Particle Swarm Optimization (PSO)—to tune the Linear Quadratic Regulator (LQR) for cruise missile systems. The objective is to optimize the Quadratic Performance Index (QPI), thereby improving tracking and control performance for feedback-linearized nonlinear missile dynamics.

📌 Highlights
✅ Developed GA, PSO, and Simulated Annealing-based optimizers for LQR tuning

✅ Optimized the Q and R matrices in the LQR cost function to minimize QPI

✅ Improved tracking performance by 20% compared to classical LQR

✅ Implemented and validated on feedback-linearized cruise missile models

✅ Modular, easy-to-extend MATLAB code for custom optimization experiments

🧠 Methodology
System Setup:

Missile dynamics are modeled and linearized using feedback linearization techniques.

Objective:

Minimize the Quadratic Performance Index (QPI):

𝐽
=
∫
0
∞
(
𝑥
𝑇
𝑄
𝑥
+
𝑢
𝑇
𝑅
𝑢
)
 
𝑑
𝑡
J=∫ 
0
∞
​
 (x 
T
 Qx+u 
T
 Ru)dt
Find optimal Q and R matrices to improve performance metrics (e.g., settling time, overshoot, control effort).

Optimization Algorithms:

Genetic Algorithm (Genetic_Algorithm.m)

Particle Swarm Optimization (Particle_Swarm.m)

Simulated Annealing (Simulated_annealing.m)

Master script: Optimization_LQR.m (coordinates the optimization and simulation workflow)

Validation:

Compared with fixed-gain LQR in simulation.

Evaluated tracking performance under nominal and disturbed conditions.

📁 Repository Structure
bash
Copy
Edit
Bio-Inspired-LQR-Optimization-for-Cruise-Missile/
│
├── Optimization_LQR.m            # Main script to run optimization and simulate results
├── Genetic_Algorithm.m           # GA-based LQR tuning
├── Particle_Swarm.m              # PSO-based LQR tuning
├── Simulated_annealing.m         # SA-based LQR tuning
├── Final_PAPER2_wtdelay_LQR.slxc # Cruise missile system simulation (compiled Simulink)
├── README.md                     # Documentation
🚀 Getting Started
Requirements
MATLAB R2020a or later

Control System Toolbox

Global Optimization Toolbox

Simulink

Instructions
Clone the repository:

bash
Copy
Edit
git clone https://github.com/shreehank22/Bio-Inspired-LQR-Optimization-for-Cruise-Missile.git
cd Bio-Inspired-LQR-Optimization-for-Cruise-Missile
Open MATLAB and run the main script:

matlab
Copy
Edit
run('Optimization_LQR.m')
Choose the algorithm: Inside the script, select which algorithm (GA, PSO, or SA) to use for tuning.

Analyze results: Simulation plots and optimized gains are displayed automatically.

📊 Results Summary
Method	Improvement in Tracking	QPI Reduction
Genetic Algorithm	✅ ~20%	Significant
Particle Swarm	✅ ~18–20%	High
Simulated Annealing	✅ Comparable	Moderate

📚 References
Bryson, A.E., & Ho, Y.C. (1975). Applied Optimal Control

Kennedy, J., & Eberhart, R. (1995). Particle Swarm Optimization

Goldberg, D.E. (1989). Genetic Algorithms in Search, Optimization and Machine Learning

Kirkpatrick, S., Gelatt, C.D., & Vecchi, M.P. (1983). Optimization by Simulated Annealing

👨‍💻 Author
Shreehank Jadhav
For research inquiries or collaborations, feel free to reach out.

📄 License
This project is licensed under the MIT License – see the LICENSE file for details.
