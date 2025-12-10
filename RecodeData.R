require(tidyverse)
data()
view(starwars)

#remove null values
NewStarwars <- starwars %>%
  na.omit()
view(NewStarwars)



#Using the myCars dataset, recode the mpg variable into a new column mpg_level as follows
# "Low" if mpg < 20, "Medium" if mpg between 20 and 30 and "High" if mpg > 30

myCars <- mtcars
view(myCars)
myCars %>%
  mutate(mpg_level = case_when(mpg <20 ~ "low",
                               mpg <= 30 ~ "medium",
                               mpg > 30 ~ "high"))


str(myCars)

#Recode the am variable in mtcars into a new variable transmission:0 → "Automatic" and 1 → "Manual"     
myCars %>%
  rename(transmission = am) %>%
  mutate(transmission = recode(transmission,
                               '0' = "Automatic",
                               '1' = "Manual"))


#Using myCars, create a new variable cyl_group:4 cylinders → "Small", 6 cylinders → "Medium" and 8 cylinders → "Large"
myCars %>% 
  mutate(cyl_group = case_when(cyl == 4 ~ "Small",
                               cyl == 6 ~ "Medium",
                               cyl ==8 ~"Large"))












