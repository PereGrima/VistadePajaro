plot(1)
text =  c("Sub_metering_1","Sub_metering_2","Sub_metering_3")
legend("topleft"
       ,lty = 1
       ,legend = text
       ,col = c("black","red","blue")
)
strwidth(text)
# [1] 0.1734099 0.1734099 0.1734099
# half the length
legend("bottomleft"
       ,lty = 1
       ,legend = text
       ,text.width = strwidth(text)[1]/2
       ,col = c("black","red","blue")
)
# double the length
legend("center"
       ,lty = 1
       ,legend = text
       ,text.width = strwidth(text)[1]*2
       ,col = c("black","red","blue")
)