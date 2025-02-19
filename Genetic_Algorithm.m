variables = 5;
lower_bound = [50000 1000 10 0.1 0.01] ;
upper_bound = [120000 4000 50 1 1];

ga_options = gaoptimset('Display','off','Generations',12,'PopulationSize',60,'PlotFcns',@gaplotbestf);
obj_fn = @(k) Optimization_LQR(k);

[k,best] = ga((obj_fn),variables,[],[],[],[],lower_bound,upper_bound,[],ga_options);
