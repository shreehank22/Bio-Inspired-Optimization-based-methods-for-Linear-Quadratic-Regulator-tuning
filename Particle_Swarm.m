fun = @(k) Optimization_LQR(k);
lower_bound = [50000 1000 10 0.1 0.01];
upper_bound = [120000 4000 50 1 1];
options = optimoptions('particleswarm','SwarmSize',50,'PlotFcn','pswplotbestf',MaxIterations=25,MaxStallIterations=10);
rng default  % For reproducibility
variables = 5;
[x,fval,exitflag,output,points] = particleswarm(fun,variables,lower_bound,upper_bound,options);