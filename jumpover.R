con = url("https://www.dropbox.com/scl/fo/zlkc7mwmsj2h2q53j5vn5/AK-Dhwjrlzczagsdlkkc3lo?rlkey=qx0caf1eofynrpunhlrjvgfwa&e=1&st=yc6pbrmj&dl=1")
htmlCode = readLines(con)
close.connection(con)
install.packages("httr")
install.packages("xml2")
library(httr)
library(xml2)
library(httr)
library(httr)
library(xml2)
url <- "https://www.dropbox.com/scl/fo/zlkc7mwmsj2h2q53j5vn5/AK-Dhwjrlzczagsdlkkc3lo?rlkey=qx0caf1eofynrpunhlrjvgfwa&e=1&st=yc6pbrmj&dl=1"
response <- GET(url)

# Parse HTML content
page <- content(response, as = "parsed", type = "text/html")

# Extract file names (adjust XPath/CSS selector as needed)
file_names <- page %>%
  xml_find_all("//div[@class='mc-media-cell-text']") %>%
  xml_text()

# Extract file sizes
file_sizes <- page %>%
  xml_find_all("//div[@class='mc-media-cell-size']") %>%
  xml_text()

# Combine results into a data frame
dara <- data.frame(
  FileName = file_names,
  FileSize = file_sizes,
  stringsAsFactors = FALSE
)

print(dara)


library(httr)

# Send a GET request to the URL
response <- GET("https://www.dropbox.com/scl/fo/zlkc7mwmsj2h2q53j5vn5/AK-Dhwjrlzczagsdlkkc3lo?rlkey=qx0caf1eofynrpunhlrjvgfwa&e=1&st=yc6pbrmj&dl=1")

# Check the headers for encoding information
headers <- headers(response)
print(headers)

# Inspect the content type (may include encoding info)
content_type <- headers$`content-type`
print(content_type)



