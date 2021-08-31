rec1=read.csv("C:\\Users\\Prathyu Lachireddy\\Desktop\\r language\\Sales.csv")
library(ggplot2)

#3 ways to construct histograms (hist,qplot,ggplot)

#using hist function
hist(rec1$Sales_in_thousands,xlab="sales",ylab=count,col="blue")

hist(rec1$Sales_in_thousands,xlab="sales",ylab=count,col="blue",border="red",breaks=100)

#qplot
qplot(rec1$Sales_in_thousands,geom="histogram")

qplot(rec1$Sales_in_thousands,geom="histogram",binwidth=50,main="Car sales",xlab="Sales", col=I("red"),fill=I("yellow"),alpha=I(0.8),xlim=c(0,250))

#ggplot
ggplot(data=rec1,aes(Sales_in_thousands))+geom_histogram()


#adding density curve 
ggplot(data=rec1,aes(x=Sales_in_thousands))+geom_density(col="red")+geom_histogram(aes(y=..density..),col="blue")

#customizing binwidth axis
ggplot(data=rec1,aes(Sales_in_thousands))+geom_histogram(binwidth=50)

ggplot(data=rec1,aes(Sales_in_thousands))+geom_histogram(binwidth=50)+labs(title="Sales",x="sales",y="count")

ggplot(data=rec1,aes(Sales_in_thousands))+geom_histogram(binwidth=50)+scale_x_continuous(name="sales in thousands")+scale_y_continuous("count")+ggtitle("sales")

#setting limits
ggplot(data=rec1,aes(Sales_in_thousands))+geom_histogram(binwidth=50,breaks=seq(0,300,by=25))+
  labs(title="sales",x="sales",y="count")+xlim(c(0,250))+ylim(c(0,80))

#adding break lines
ggplot(data=rec1,aes(Sales_in_thousands))+geom_histogram(binwidth=50,breaks=seq(0,300,by=25))+
  labs(title="sales",x="sales",y="count")+xlim(c(0,250))+ylim(c(0,80))+geom_vline(xintercept = 100,size=1,col="red",linetype="dashed")

#change the colors of the histogram
ggplot(rec1,aes(x=Sales_in_thousands))+geom_histogram(aes(y=..count..),
      binwidth=50,col="red",fill="yellow")+
  scale_x_continuous(name="Sales",breaks=seq(0,300,by=25),
                     limits=c(0,300))+
  scale_y_continuous(name="Count",limits=c(0,20))+
  ggtitle("Sales in thousands")+
  geom_vline(xintercept=100,size=1,col="red",linetype="dashed")

#group values
ggplot(rec1,aes(x=Sales_in_thousands,fill=Manufacturer))+geom_histogram(aes(y=..count..),binwidth=50)+scale_x_continuous(name="Sales",breaks=seq(0,300,by=25),limits=c(0,300))+scale_y_continuous(name="Count",limits=c(0,20))+ggtitle("Sales in thousands")


ggplot(rec1,aes(x=Sales_in_thousands,fill=Manufacturer))+geom_histogram(aes(y=..count..),binwidth=50)+scale_x_continuous(name="Sales",breaks=seq(0,300,by=25),limits=c(0,300))+scale_y_continuous(name="Count",limits=c(0,20))+ggtitle("Sales in thousands")+theme(legend.position="bottom")


ggplot(rec1,aes(x=Sales_in_thousands,fill=Manufacturer))+geom_histogram(aes(y=..count..),binwidth=50)+scale_x_continuous(name="Sales",breaks=seq(0,300,by=25),limits=c(0,300))+scale_y_continuous(name="Count",limits=c(0,20))+ggtitle("Sales in thousands")+facet_wrap(~Manufacturer,scale="free")+theme(legend.position = "bottom")

ggplot(rec1,aes(x=Sales_in_thousands,fill=Manufacturer))+geom_histogram(aes(y=..count..),binwidth=50)+scale_x_continuous(name="Sales",breaks=seq(0,300,by=25),limits=c(0,300))+scale_y_continuous(name="Count",limits=c(0,20))+ggtitle("Sales in thousands")+theme(legend.position="bottom")+geom_text(aes(label=Manufacturer),vjust=-1,size=3.5)

