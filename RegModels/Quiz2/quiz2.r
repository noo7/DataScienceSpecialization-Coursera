x <- c(0.61, 0.93, 0.83, 0.35, 0.54, 0.16, 0.91, 0.62, 0.62)
y <- c(0.67, 0.84, 0.6, 0.18, 0.85, 0.47, 1.1, 0.65, 0.36)
f <- lm(y ~ x)

data(mtcars)
x<-mtcars$wt
y<-mtcars$mpg
fit<-lm(y ~ x)

fit2 <- lm(y ~ I(x / 2))
tbl2 <- summary(fit2)$coefficients
mean <- tbl2[2,1]      
se <- tbl2[2,2] 
df <- fit2$df
#Two sides T-Tests
mean + c(-1,1) * qt(0.975, df=df) * se