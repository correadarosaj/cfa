require(tidyverse)
require(reshape2)

data = cbind.data.frame(
  Estrategia = c('111', '112', '121', '122', '211', '212', '221', '222'),
  Feminino = c(25,17,98,13,486,46,590,39),
  Masculino = c(5,42,206,64,729,95,872,199)
)

long.data = reshape2::melt(data) %>% dplyr::rename(., Sexo = variable ) %>% dplyr::rename(., Obs  =  value )%>%as_tibble()

complete.data = rbind.data.frame(
cbind.data.frame(R = rep(1,25), P = rep(1,25) , V = rep(1,25),  Sexo = rep(1,25)), 
cbind.data.frame(R = rep(1,5), P = rep(1,5) , V = rep(1,5),  Sexo = rep(2,5)),   

cbind.data.frame(R = rep(1,17), P = rep(1,17) , V = rep(2,17),  Sexo = rep(1,17)), 
cbind.data.frame(R = rep(1,42), P = rep(1,42) , V = rep(2,42),  Sexo = rep(2,42)),   

cbind.data.frame(R = rep(1,98), P = rep(2,98) , V = rep(1,98),  Sexo = rep(1,98)), 
cbind.data.frame(R = rep(1,206), P = rep(2,206) , V = rep(1,206),  Sexo = rep(2,206)),

cbind.data.frame(R = rep(1,13), P = rep(2,13) , V = rep(2,13),  Sexo = rep(1,13)), 
cbind.data.frame(R = rep(1,64), P = rep(2,64) , V = rep(2,64),  Sexo = rep(2,64)),

cbind.data.frame(R = rep(2,486), P = rep(1,486) , V = rep(1,486),  Sexo = rep(1,486)), 
cbind.data.frame(R = rep(2,729), P = rep(1,729) , V = rep(1,729),  Sexo = rep(2,729)),

cbind.data.frame(R = rep(2,46), P = rep(1,46) , V = rep(2,46),  Sexo = rep(1,46)), 
cbind.data.frame(R = rep(2,95), P = rep(1,95) , V = rep(2,95),  Sexo = rep(2,95)),

cbind.data.frame(R = rep(2,590), P = rep(2,590) , V = rep(1,590),  Sexo = rep(1,590)), 
cbind.data.frame(R = rep(2,872), P = rep(2,872) , V = rep(1,872),  Sexo = rep(2,872)),

cbind.data.frame(R = rep(2,39), P = rep(2,39) , V = rep(2,39),  Sexo = rep(1,39)), 
cbind.data.frame(R = rep(2,199), P = rep(2,199) , V = rep(2,199),  Sexo = rep(2,199))
)
