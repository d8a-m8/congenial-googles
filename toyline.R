a = 5
b = 3
n = 500
x <- runif(n)
SigSq <- sd(x)
y <- a + b*x + rnorm(n, sd = sqrt(SigSq))

avrx = mean(x)

s_x <- sort(x, decreasing = F)
s_y <- sort(y, decreasing = F)

r_x <- rank(x,na.last=T,ties.method = 'first')
r_y <- rank(y,na.last=T,ties.method = 'first')

rs_x <- sort(r_x, decreasing = F)
rs_y <- sort(r_y, decreasing = F)

x.frame <- cbind(s_x, rs_x)
y.frame <- cbind(s_y, rs_y)

plot1 <- plot(x,y)
plot2 <- plot(s_x,s_y)
##plot3 <- plot(r_x,r_y)

hplot1 <- hist(x, plot = T)

xy.data <- (cbind(x,y))
summary(xy.data)

##print(x.frame)
##print(y.frame)