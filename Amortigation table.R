rm(list=ls())
loan<-5000
payment<-1387.05
int<-0.12
n<-5
interest=numeric(0)
principle_repaid=numeric(0)
outstanding_balance=numeric(0)
for (i in 1:n){
  interest[i]<-(loan*int)
  principle_repaid[i]<-(payment-interest[i])
  outstanding_balance[i]<-(loan-principle_repaid[i])
  loan=loan-principle_repaid[i]
}
D=cbind.data.frame(payment,interest,principle_repaid,outstanding_balance) 
D$outstanding_balance<-ifelse(D$outstanding_balance<0,0,outstanding_balance)
plot(D$outstanding_balance,lty=2,type = "b")
##### solve this problem using function #####



