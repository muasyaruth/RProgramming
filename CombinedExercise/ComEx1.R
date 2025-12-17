require(tidyverse)

#Load the built-in dataset iris into a variable called df_iris. Display the first 6 rows.
df_iris <- iris
View(head(df_iris))


#Load the built-in dataset airquality into df_air and display its structure (str()).
df_air <- airquality
str(df_air)




  
#Convert the Species column in iris to a factor and display its levels.
iris $ Species <- as.factor(iris$Species)
str(iris)
levels(iris$Species)


#Check the type of the first column of airquality using class().
view(airquality)
class(airquality$Ozone)


#In mtcars, rename mpg → miles_per_gallon and hp → horsepower.
mtcars %>% 
  rename(miles_per_gallon = mpg, horsepower = hp)


#In mtcars, create a new column cyl_group:4 → "Small", 6 → "Medium" and 8 → "Large"
require(tidyverse)
mtcars %>% 
  mutate(cyl_group = case_when(cyl == 4 ~ "small",
                               cyl == 6 ~ "medium",
                               cyl == 8 ~ "large"))


# In iris, recode Species into a new column Type:"setosa" → "A", "versicolor" → "B" and "virginica" → "C"
view(iris)
iris %>% 
  rename(Type = Species) %>% 
  mutate(Type = recode(Type, 
                       "setosa" = "A", "virginica" = "C", "versicolor" = "B"))

#From mtcars, select only columns: mpg, hp, wt and show first 6 rows.
head(mtcars %>% 
  select(mpg, hp, wt))

#Filter mtcars where mpg > 20 and cyl != 8.
head(mtcars %>% 
  filter(mpg > 20, cyl !=8) %>% 

#Arrange the filtered mtcars dataset (from Question 2) in descending order of mpg.

  arrange(-mpg),5)


