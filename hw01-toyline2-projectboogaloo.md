toyline2-projectboogaloo
================
d8a-m8
2016-09-15

R Markdown
----------

This is an R Markdown document. Markdown is a simple formatting syntax for authoring HTML, PDF, and MS Word documents. For more details on using R Markdown see <http://rmarkdown.rstudio.com>.

When you click the **Knit** button a document will be generated that includes both content as well as the output of any embedded R code chunks within the document. You can embed an R code chunk like this:

    ## toyline 1 copied into toyline 2...
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

    hplot1 <- hist(x)

    xy.data <- (cbind(x,y))
    ds_xy.data <- summary(xy.data)

    print(plot1)
    print(plot2)
    print(hplot1)
    print(ds_xy.data)
