library(tidyverse) 
library(nycflights13)
flights %>% 
  group_by(dest) %>% 
  summarise(mean_arr_delay=mean(arr_delay,na.rm = TRUE)) %>% 
  arrange(desc(mean_arr_delay))
flights %>% 
  group_by(origin) %>% 
  summarise(mean_dep_delay=mean(dep_delay,na.rm = TRUE)) %>% 
  arrange(desc(mean_dep_delay))
