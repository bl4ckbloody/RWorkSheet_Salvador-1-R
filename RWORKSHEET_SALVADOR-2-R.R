#1 Create a vector using : operator

# a. Sequence from -5 to 5. Write the R code and its output.
# Describe its output.

Negative5to5<-seq(-5,5)
Negative5to5

# It generates integer numbers from -5 to 5

#b. x <- 1:7. What will be the value of x?

x <- 1:7
x

# Value of x will be 1 2 3 4 5 6 7

#2. Create a vector using seq() function
# a. seq(1, 3, by=0.2) # specify step size

VectorSeq <-seq(1,3,by=0.2)
VectorSeq

# Write the R script and its output. Describe the output.
# The output is 1.0 1.2 1.4 1.6 1.8 2.0 2.2 2.4 2.6 2.8 3.0 the numbers have a step size of 0.2 in between

Factoryworkers <- c (34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 27,
                     22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 43, 53, 41, 51, 35,
                     24,33, 41, 53, 40, 18, 44, 38, 41, 48, 27, 39, 19, 30, 61, 54, 58, 26,
                     18.)
Factoryworkers

#3. A factory has a census of its workers. There are 50 workers in total. The following list shows their ages:
#a. Access 3rd element, what is the value?

Factoryworkers[(3)]

#The value of third element is 22.


#b. Access 2nd and 4th element, what are the values?

Factoryworkers [c(2,4)]


#The values of 2nd and 4th element are 28 and 36.

# c. Access all but the 4th and 12th element is not included. Write the R script and its output.


Factoryworkers [c(1:3,5:11,13:50)]

# Output 34 28 22 27 18 52 39 42 29 35 27 22 37 34 19 20 57 49 50 37 46 25 17 37 43 53 41 51 35 24 33 41 53 40 18 44 38 41 48 27 39 19 30 61 54 58 26 18


#4 *Create a vector x <- c("first"=3, "second"=0, "third"=9). Then named the vector, names(x).

x <- c("first" = 3, "second" = 0, "third" = 9)
x


#a. Print the results. Then access x[c("first", "third")].
#Describe the output.

x[c("first", "third")]
x

#b. Write the code and it's output.
#The output shows that results just printed the word first and third

#5 Create a sequence x from -3:2.

x<-seq(-3,2)
x

#a. Modify 2nd element and change it to 0;
#Describe the output.

x[2] <- 0
x

#Describe the output.
#The output shows that the second number change into 0.

#b.Write the code and its output.
x<-seq(-3,2)
x
x[2] <- 0
x
# output  -3  0 -1  0  1  2

#6 *The following data shows the diesel fuel purchased by Mr. Cruz.
# Month Jan Feb March Apr May June
# Price per liter (PhP) 52.50 57.25 60.00 65.00 74.25 54.00
# Purchase–quantity(Liters) 25 30 40 50 10 45


#a.Create a data frame for month, price per liter (php)and purchase-quantity (liter). Write the R scripts and its output.

Purchases <-data.frame(
  
  Month = c("Jan", "Feb", "March", "Apr", "May", "June"),
  Priceperliter = c(52.50,57.25,60.00,65.00,74.25,54.00),
  Purchasequantity  = c(25,30,40,50,10,45)
)
Purchases
View(Purchases)

#b.What is the average fuel expenditure of Mr. Cruz from
#Jan to June? Note: Use ‘weighted.mean(liter, purchase)‘.
# Write the R scripts and its output.

average_expenditure <-weighted.mean(Purchases$Priceperliter , Purchases$Purchasequantity)
average_expenditure

#Output 59.2625

#7.a

data <- c(length(rivers), sum(rivers), mean(rivers), median(rivers), var(rivers),
          sd(rivers), min(rivers), max(rivers))
data

#b The results shows the built in datasets of rivers in north america and shows that length,sum,mean,median,var,sd,min,max of rivers


#output 141.0000  83357.0000    591.1844    425.0000 243908.4086    493.8708    135.0000   3710.0000

#8.A

celebrities <- c("Tom Cruise","Rolling Stones","Oprah Winfrey","U2","Tiger Woods","Steven Spielberg","Howard Stern","50 Cent","Cast of the Sopranos","Dan Brown","Bruce Springsteen","Donald Trump","Muhammad Ali","Paul McCartney","George Lucas","Elton John","David Letterman","Phil Mickelson","J.K Rowling","Bradd Pitt","Peter Jackson","Dr. Phil McGraw","Jay Lenon","Celine Dion","Kobe Bryant")

power_rankings <- c(1, 2, 3, 4, 5, 6, 7 ,8 , 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25)

pay_amounts <- c(67, 90,225,110,90,332,302,41,52,88,55,44,55,40,233,34,40,47,75,25,39,45,32,40,31 )


celeb_data <- data.frame(Celebrity = celebrities, Power_Ranking = power_rankings, Pay_Amount = pay_amounts)

View(celeb_data)

#8.B

celeb_data$Power_Ranking[celeb_data$Celebrity == "J.K Rowling"] <- 15
celeb_data$Pay_Amount[celeb_data$Celebrity == "J.K Rowling"] <- 90
celeb_data

View(celeb_data)

#8.c
write.csv(celeb_data, "/cloud/project/PowerRanking.csv")
PowerRanking <- read.csv("PowerRanking.csv")
PowerRanking

#8.d
selected_rows <- celeb_data[10:20, ]
save(selected_rows, file = "Ranks.RData")
selected_rows

#Output   Celebrity Power_Ranking Pay_Amount
#10         Dan Brown            10         88
#11 Bruce Springsteen            11         55
#12      Donald Trump            12         44
#13      Muhammad Ali            13         55
#14    Paul McCartney            14         40
#15      George Lucas  J.K. Rowling         90
#16        Elton John            16         34
#17   David Letterman            17         40
#18    Phil Mickelson            18         47
#19       J.K Rowling            15         90
#20        Bradd Pitt            20         25

#8.e This script selects rows 10 to 20 from the original data frame, saves the selected rows as Ranks.RData, and then prints the selected rows as the output.


#9.a
if (!requireNamespace("readxl", quietly = TRUE)) {
  install.packages("readxl")
}
library(readxl)
file_url <- "https://tinyurl.com/Hotels-Vienna"
file_path <- "Hotels-Vienna.xlsx"
download.file(file_url, destfile = file_path, mode = "wb")
hotel_data <- read_excel(file_path)
str(hotel_data)


#9.b
dataset_dimensions <- dim(hotel_data)
data

#9.c
selected_columns <- hotel_data[, c("country", "neighbourhood", "price", "stars", "accomodation_type", "ratings")]
selected_columns


#9.d
new_rdata_file <- "new.RData"
save(selected_columns, file = new_rdata_file)
cat("Selected columns saved as", new_rdata_file, "\n")


#9.e
load("new.RData")

("First six rows:")
(head(selected_columns))


("Last six rows:")
(tail(selected_columns))

#10.a
vegetables <- c("Eggplant", "Beans", "Chinese Cabbage", "Radish", "Bean Sprout",
                "Bitter Gourd", "Potato", "Onion", "Lettuce", "Cucumber")

#Output "Eggplant", "Beans", "Chinese Cabbage", "Radish", "Bean Sprout", "Bitter Gourd", "Potato", "Onion", "Lettuce", "Cucumber"

#10.B) Add 2 additional vegetables after the last vegetables in the list.
vegetables <- append(vegetables, c("Broccoli ","Cabbage"))
vegetables

#Output [1] "Eggplant"        "Beans"           "Chinese Cabbage" "Radish"          "Bean Sprout"    
#[6] "Bitter Gourd"    "Potato"          "Onion"           "Lettuce"         "Cucumber"       
#[11] "Broccoli "       "Cabbage" 
#10.c

vegetables <- c(vegetables[1:5], "Tomato", "Ginger", "Green pees", "Spring onions", vegetables[6:length(vegetables)])
vegetables

#Output [1] "Eggplant"        "Beans"           "Chinese Cabbage" "Radish"          "Bean Sprout"    
#[6] "Tomato"          "Ginger"          "Green pees"      "Spring onions"   "Radish"         
#[11] "Ginger"          "Green pees"      "Spring onions"   "Bitter Gourd"    "Potato"         
#[16] "Onion"           "Lettuce"         "Cucumber"        "Broccoli "       "Cabbage" 
#It added vegetables in between 5 and 6

#10.d
indices_to_remove <- c(5, 10, 15)
vegetables <- vegetables[-indices_to_remove]
vegetables
#Output  [1] "Eggplant"        "Beans"           "Chinese Cabbage" "Radish"          "Tomato"         
#[6] "Ginger"          "Green pees"      "Spring onions"   "Ginger"          "Green pees"     
#[11] "Spring onions"   "Bitter Gourd"    "Onion"           "Lettuce"         "Cucumber"       
#[16] "Broccoli "       "Cabbage"  
#It remove the vegetables that is in slot number 5,10,15
