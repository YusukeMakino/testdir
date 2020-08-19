library(tidyverse) 
library(nycflights13)
flights %>% 
  group_by(dest) %>% 
  summarise(mean_delay=mean(arr_delay,na.rm = TRUE)) %>% 
  arrange(desc(mean_delay))
