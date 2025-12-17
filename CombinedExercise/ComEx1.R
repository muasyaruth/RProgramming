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

print("great")
mtcars %>% 
  mutate








