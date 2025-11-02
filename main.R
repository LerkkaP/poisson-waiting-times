lambda = 2
time = 1000

set.seed(42)

expected_events <- rpois(1, lambda=lambda*time)

event_times <- sort(runif(expected_events, min=0, max=time))

time_between <- diff(event_times)

hist(time_between, breaks="FD",
     probability=TRUE, col="dodgerblue1",
     xlab = "Time between events", ylab = "Probability density",
     main = paste("Exponential(λ = 2) Waiting Times from Poisson Process"))
t_vals <- seq(0, max(time_between), length.out=1000)
lines(t_vals, lambda*exp(-lambda*t_vals),  col="red", lwd=2)