#загружаем данные и используем функцию ts временной ряд
data2 <- ts(read.csv("RU_Electricity_Market_PZ_dayahead_price_VOLUME.csv", header = T, sep = ",")$V3, start=c(2006,09), frequency=12)
#Общее количество цен на каждый месяц отчетного периода составило
cum.data2 <- ts(cumsum(data2), start=c(2006,09), frequency=12)
#Отобразим данные цен по месяцам и изменения цен графически.
oldpar <- par(mfrow=c(2,1))
plot(data2, type="b", log="y", xlab="")
plot(cum.data2, type="b", ylim=c(1,3000), log="y")
par(oldpar)