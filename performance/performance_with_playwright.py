import time
from playwright.sync_api import sync_playwright

# Record start time
start_time = time.time()

with sync_playwright() as p:
    # Launch browser (headless)
    browser = p.chromium.launch(headless=True)
    page = browser.new_page()

    # Open the target URL
    page.goto("https://demoqa.com/automation-practice-form")

    # Wait until a key element is present (form field)
    page.wait_for_selector("#firstName")

    # Record end time
    end_time = time.time()

    # Calculate load time
    load_time = end_time - start_time
    print(f"Page load time: {load_time:.2f} seconds")

    # Close browser
    browser.close()