con = url("https://www.dropbox.com/scl/fo/zlkc7mwmsj2h2q53j5vn5/AK-Dhwjrlzczagsdlkkc3lo?rlkey=qx0caf1eofynrpunhlrjvgfwa&e=1&st=yc6pbrmj&dl=0")
htmlCode = readLines(con)
close(con)
htmlCode
install.packages(XML)
install.packages(xml)
install.packages(XML)
install.packages("XML")
libary(XML)
library(XML)
url("https://www.dropbox.com/scl/fo/zlkc7mwmsj2h2q53j5vn5/AK-Dhwjrlzczagsdlkkc3lo?rlkey=qx0caf1eofynrpunhlrjvgfwa&e=1&st=yc6pbrmj&dl=0")
url <- ("https://www.dropbox.com/scl/fo/zlkc7mwmsj2h2q53j5vn5/AK-Dhwjrlzczagsdlkkc3lo?rlkey=qx0caf1eofynrpunhlrjvgfwa&e=1&st=yc6pbrmj&dl=0")
html <-htmlTreeParse(url, useInternalNodes=TRUE)

xpathSApply(html, "//Title", xmlValue)
list()
xpathSApply(html, "//title", xmlValue)

