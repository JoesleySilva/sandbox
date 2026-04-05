import time
from selenium import webdriver
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.common.by import By

# Configure Chrome options
chrome_options = Options()
chrome_options.add_argument("--headless")  # run without opening a window
chrome_options.add_argument("--disable-gpu")
chrome_options.add_argument("--no-sandbox")

# Path to ChromeDriver (adjust to your system)
service = Service("/path/to/chromedriver")

# Start WebDriver
driver = webdriver.Chrome(service=service, options=chrome_options)

# Record start time
start_time = time.time()

# Open the target URL
driver.get("https://demoqa.com/automation-practice-form")

# Wait until a key element is present (form field)
driver.find_element(By.ID, "firstName")

# Record end time
end_time = time.time()

# Calculate load time
load_time = end_time - start_time
print(f"Page load time: {load_time:.2f} seconds")

# Close browser
driver.quit()
