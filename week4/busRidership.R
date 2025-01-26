# Find the expected passengers at each stop

expectedpassengers = function(nreps, nstops){
  n=0
  for(i in 1:nreps){
    passengers = 0
    for(j in 1:nstops){
      if(passengers>0){
        for(k in 1:passengers){
          if(runif(1)<0.2){
            passengers=passengers-1
          }
        }
      }
      newpass=sample(0:2, 1, prob=c(0.5, 0.4, 0.1))
      passengers=passengers+newpass
    }
    n=n+passengers
  }
  return(n/nreps)
}
expectedpassengers(1000, 4)
