library(dslabs)
data(murders)
class(murders)

#1
pop = murders$population
asc = sort(pop)
asc [1]
min(pop)

#2
x=murders$population
index=order(x)
index[1]

#3
which.min(murders$population)

#4
q=murders$population
p=order(q)
m=p[1]

s=murders$state

s[m]

#5
temp <- c(35, 88, 42, 84, 81, 30)
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro",
          "San Juan", "Toronto")
city_temps <- data.frame(name = city, temperature = temp)

rank(city_temps$temperature)
my_df=city_temps[order(rank(city_temps$temperature)),]
my_df

#6
ind=rank(murders$populations)
my_Df=murders[order(rank(murders$population)),]
my_Df

#7
population_in_millions <- murders$population/10^6
total_gun_murders <- murders$total

ab=log10(population_in_millions)
plot(ab, total_gun_murders)

#8
Popul=log10(murders$population)
California = c(Popul, murders$population/murders$total)
hist(California)

#9

murders$rate <- with(murders, total / population * 100000)
boxplot(rate~region, data = murders)
