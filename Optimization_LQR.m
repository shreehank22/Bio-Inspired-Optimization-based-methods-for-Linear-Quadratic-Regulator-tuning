function cost = Optimization_LQR(k)
assignin('base','k',k)
Output = sim("Final_PAPER2_wtdelay_LQR.slx");
cost = Output.RMSE(length(Output.RMSE));
end