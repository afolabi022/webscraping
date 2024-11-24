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


url <- "https://www.dropbox.com/scl/fo/zlkc7mwmsj2h2q53j5vn5/AK-Dhwjrlzczagsdlkkc3lo?rlkey=qx0caf1eofynrpunhlrjvgfwa&e=1&st=yc6pbrmj&dl=1"


zip_file <- "downloaded_file.zip"


response <- GET(url)


if (status_code(response) == 200) {
  
  writeBin(content(response, "raw"), zip_file)
  cat("ZIP file downloaded successfully.\n")
  

  unzip(zip_file, exdir = "extracted_files")  # specify the extraction directory
  cat("ZIP file extracted successfully.\n")
} else {
  cat("Failed to download ZIP file. Status:", status_code(response), "\n")
}
pg1
names(pg1)
pg1$content
pg1$all_headers
pg1$handle
pg1$headers
library(httr)

# Step 1: Download the ZIP file
url <- "https://www.dropbox.com/scl/fo/zlkc7mwmsj2h2q53j5vn5/AK-Dhwjrlzczagsdlkkc3lo?rlkey=qx0caf1eofynrpunhlrjvgfwa&e=1&st=yc6pbrmj&dl=1"
response <- GET(url)

if (status_code(response) == 200) {
  # Step 2: Save ZIP content locally
  zip_path <- "downloaded_file.zip"
  writeBin(content(response, "raw"), zip_path)
  
  # Step 3: Extract ZIP file
  extracted_dir <- "extracted_files"
  dir.create(extracted_dir, showWarnings = FALSE)
  unzip(zip_path, exdir = extracted_dir)
  
  # Step 4: Identify extracted files
  extracted_files <- list.files(extracted_dir, full.names = TRUE)
  print(extracted_files) # To see the extracted files
  
  # Assuming the extracted file is in a readable format (e.g., Excel)
  for (file in extracted_files) {
    if (grepl("\\.xlsx$", file, ignore.case = TRUE)) {
      # Convert Excel to CSV
      library(readxl)
      data <- read_excel(file)
      csv_name <- gsub("\\.xlsx$", ".csv", file, ignore.case = TRUE)
      write.csv(data, csv_name, row.names = FALSE)
    } else if (grepl("\\.json$", file, ignore.case = TRUE)) {
      # Convert JSON to CSV
      library(jsonlite)
      data <- fromJSON(file)
      csv_name <- gsub("\\.json$", ".csv", file, ignore.case = TRUE)
      write.csv(data, csv_name, row.names = FALSE)
    }
    # Add other conversions as needed for different formats
  }
  
  print("Conversion complete. Check the extracted directory.")
} else {
  cat("Failed to download ZIP file. Status:", status_code(response), "\n")
}
list.files("extracted_files", full.names = TRUE)
getwd()

