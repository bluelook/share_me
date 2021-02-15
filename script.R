library(tidyverse)
mean_steps <-  read.csv("data.csv", stringsAsFactors = FALSE)

ggplot(data=mean_steps,aes(x = trial, y = mean_same, color = block, group=actor, alpha=actor)) +
  stat_summary(fun="mean",position=position_dodge(width=0.1), 
               geom="line" ,size=2) +
  geom_hline(yintercept = 50,linetype="dashed", color = "grey",size=1)+
  scale_y_continuous(name="Percentage correct chosen (%)", breaks = seq(0, 100, 25)) +
  scale_x_continuous(name="Trial", breaks = seq(0, 20, 4)) +
  facet_wrap(.~block, strip.position="top")+
  scale_color_manual(values=wes_palette("Darjeeling1"), guide=F)+#name = "Preferred Strategy", labels = c("reapraisal","distraction","savory","sweet","blue closet","brown closet"))+
  scale_alpha_manual(values = c(0.5, 1,0.5, 1,0.5, 1),guide=FALSE) +
  theme(
    legend.title = element_blank(),
    axis.title.x = element_text(size = 10, vjust = -0.35),
    axis.title.y = element_text(size = 10, vjust = 0.5),
    axis.text.x = element_text(size = 8, vjust = 0.5),
    axis.text.y = element_text(size = 8, vjust = 0.5)
  )
