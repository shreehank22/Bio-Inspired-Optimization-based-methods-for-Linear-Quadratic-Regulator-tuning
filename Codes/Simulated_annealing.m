rng default
k = [119000 3500 35 0.9 0.01];
Cost_func = @(k) Optimization_LQR(k);
variables = 5;
lb = [119000 3500 35 0.9 0.01];
ub = [120000 4000 45 1 0.02];
opt = optimoptions(@simulannealbnd,'plotfcn', {@saplotbestx,@saplotbestf,@saplotx,@saplotf},'InitialTemperature',700,'TemperatureFcn',@temperaturefast,'ReannealInterval',50,'MaxIterations',2500);
[x,fval,exitflag,output] = simulannealbnd(Cost_func,k,lb,ub,opt);