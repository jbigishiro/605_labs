sumsim = function(nreps){
  tatk = replicate(nreps, sum(sample(1:6, 3, replace=T)))
  return(mean(tatk == 12))
}
sumsim(5000)
