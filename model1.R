
features<- c("ofic_ingLab", "nmenores",  "H_Head",  "age",  "gender" )

db_int<- db_int %>% drop_na(any_of(features))

## Simple Regression
linear_model<- lm(totalHoursWorked ~ ofic_ingLab + nmenores  + 
                    nmenores*gender + H_Head + age + gender, data=db_int  )
summary(linear_model)

