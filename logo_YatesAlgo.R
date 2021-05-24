rm(list=ls())


library(dplyr)
library(hexSticker)
library(ggplotify)
library(ggraph)
library(RColorBrewer)
library(extrafont)
library(ggplot2)
library(hrbrthemes)
library(viridis)
library(gridExtra)
#font_import()


set.seed(20)
moxbuller = function(n) {   
  u = runif(n)   
  v = runif(n)   
  x = cos(2*pi*u)*sqrt(-2*log(v))  
  y = sin(2*pi*v)*sqrt(-2*log(u))
  r = list(x=x, y=y)
  return(r) 
}
r = moxbuller(5000)

df = data.frame(x=r$x,y=r$y)

col = c("#0047FA","#00B4FA","#00D6FA","#00FAF8")
col1 = c("red","yellow","green","blue","pink")#c("#0047FA","#00B4FA","#00D6FA","#00FAF8","#4500FA")

q = ggplot(df,aes(x = x, y = y)) +
  geom_point(alpha=1.2, shape=20, color=rep(col,1250),size=0.01) + theme_void()


sticker(q, package="YatesAlgo.FactorialExp.SR", p_size=6, s_x=1.0, s_y=0.9, s_width=1.7, s_height=1.3,
        p_x = 1.0, p_y = 1.6,
        url = "https://cran.r-project.org/package=YatesAlgo.FactorialExp.SR", u_color = "white",
        u_size = 2.6,
        h_fill="black", h_color="grey",dpi=300,h_size=0.5)

