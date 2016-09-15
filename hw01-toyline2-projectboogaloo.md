toyline2-projectboogaloo
================
d8a-m8
2016-09-15

R Markdown
----------

This is an R Markdown document. Markdown is a simple formatting syntax for authoring HTML, PDF, and MS Word documents. For more details on using R Markdown see <http://rmarkdown.rstudio.com>.

When you click the **Knit** button a document will be generated that includes both content as well as the output of any embedded R code chunks within the document. You can embed an R code chunk like this:

toyline 1 copied into toyline 2...
----------------------------------

a = 5 b = 3 n = 500 x &lt;- runif(n) SigSq &lt;- sd(x) y &lt;- a + b\*x + rnorm(n, sd = sqrt(SigSq))

avrx = mean(x)

s\_x &lt;- sort(x, decreasing = F) s\_y &lt;- sort(y, decreasing = F)

r\_x &lt;- rank(x,na.last=T,ties.method = 'first') r\_y &lt;- rank(y,na.last=T,ties.method = 'first')

rs\_x &lt;- sort(r\_x, decreasing = F) rs\_y &lt;- sort(r\_y, decreasing = F)

x.frame &lt;- cbind(s\_x, rs\_x) y.frame &lt;- cbind(s\_y, rs\_y)

plot1 &lt;- plot(x,y) plot2 &lt;- plot(s\_x,s\_y) \#\#plot3 &lt;- plot(r\_x,r\_y)

hplot1 &lt;- hist(x)

xy.data &lt;- (cbind(x,y)) ds\_xy.data &lt;- summary(xy.data)

print(plot1) print(plot2) print(hplot1) print(ds\_xy.data)
