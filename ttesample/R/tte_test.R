simStudy <- getOneClinicalTrial(
  nPat = c(20, 20), transitionByArm = list(transition1, transition2),
  dropout = list(rate = 0.3, time = 10),
  accrual = list(param = "time", value = 7)
)


transition1 <- weibull_transition(h01 = 1.2, h02 = 1.5, h12 = 1.6, p01 = 0.8, p02 = 0.9, p12 = 0)
transition2 <- weibull_transition(h01 = 1, h02 = 1.3, h12 = 1.7, p01 = 1.1, p02 = 0.9, p12 = 0)



sim_exp <- getOneClinicalTrial(
  nPat = c(10, 10), transitionByArm = list(transition1, transition2),
  dropout = list(rate = 0.3, time = 10),
  accrual = list(param = "time", value = 7)
)


transition1 <- weibull_transition(h01 = 1.2, h02 = 1.5, h12 = 1.6, p01 = 1, p02 = 0, p12 = 0)
transition2 <- weibull_transition(h01 = 1, h02 = 1.3, h12 = 1.7, p01 = 1, p02 = 0, p12 = 0)
