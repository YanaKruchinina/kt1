#загружаем данные и используем функцию ts временной ряд
data1 <- ts(read.csv("RU_Electricity_Market_EUS_dayahead_price.csv", header = T, sep = ",")$V3,
+ start=c(2017,01), frequency=12)
#Общее количество цен на каждый месяц отчетного периода составило
cum.data1 <- ts(cumsum(data1),
+ start=c(2017,01), frequency=12)
#Отобразим данные цен по месяцам и изменения цен графически.
oldpar <- par(mfrow=c(2,1))
plot(data1, type="b", log="y", xlab="")
plot(cum.data1, type="b", ylim=c(1,3000), log="y")
par(oldpar)

