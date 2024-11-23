pg1 = GET("https://www.dropbox.com/scl/fo/zlkc7mwmsj2h2q53j5vn5/AK-Dhwjrlzczagsdlkkc3lo?rlkey=qx0caf1eofynrpunhlrjvgfwa&e=1&st=yc6pbrmj&dl=1")
pg1
names(pg1)
content(pg1)
library(httr)

# Define the URL
url <- "https://www.dropbox.com/scl/fo/zlkc7mwmsj2h2q53j5vn5/AK-Dhwjrlzczagsdlkkc3lo?rlkey=qx0caf1eofynrpunhlrjvgfwa&e=1&st=yc6pbrmj&dl=1"

# Step 1: Download the ZIP file content into memory
response <- GET(url)

# Step 2: Check the Content-Type and status
if (status_code(response) == 200 && http_type(response) == "application/zip") {
  cat("Successfully downloaded ZIP file.\n")
  
  # Step 3: Write the ZIP content to a temporary file
  temp_zip <- tempfile(fileext = ".zip")
  writeBin(content(response, "raw"), temp_zip)
  
  # Step 4: Extract the ZIP file to a temporary directory
  temp_dir <- tempdir()
  unzip(temp_zip, exdir = temp_dir)
  cat("Files extracted to temporary directory:", temp_dir, "\n")
  
  # Step 5: List the extracted files
  files <- list.files(temp_dir, recursive = TRUE)
  print(files)
  
} else {
  cat("Failed to download ZIP file. Status:", status_code(response), "\n")
}
cat()
# Load required libraries
library(httr)
library(zip)

# Define the URL
url <- "https://www.dropbox.com/scl/fo/zlkc7mwmsj2h2q53j5vn5/AK-Dhwjrlzczagsdlkkc3lo?rlkey=qx0caf1eofynrpunhlrjvgfwa&e=1&st=yc6pbrmj&dl=1"

# Define the destination file for the ZIP file
zip_file <- "downloaded_file.zip"

# Send GET request to download the ZIP file
response <- GET(url)

# Check if the request was successful (status code 200)
if (status_code(response) == 200) {
  # Write the content of the response (ZIP file) to disk
  writeBin(content(response, "raw"), zip_file)
  cat("ZIP file downloaded successfully.\n")
  
  # Unzip the downloaded file
  unzip(zip_file, exdir = "extracted_files")  # specify the extraction directory
  cat("ZIP file extracted successfully.\n")
} else {
  cat("Failed to download ZIP file. Status:", status_code(response), "\n")
}

