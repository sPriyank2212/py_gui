import tkinter as tk
from tkinter import scrolledtext
import threading
import queue
import time
import datetime
from openpyxl import Workbook
from openpyxl.utils import get_column_letter

MAX_LINES = 500
SCROLL_DELAY = 10000  # 10 seconds
EXCEL_WRITE_INTERVAL = 60  # 5 minutes in seconds
def process_queue(scrolled_window, q, lines_buffer, scroll_control, file_name, last_excel_write_time, last_timestamp_update_time):
    current_time = time.time()
    if current_time - last_excel_write_time >= EXCEL_WRITE_INTERVAL:
        if lines_buffer:
            # Simulate 5 parameters and timestamp
            current_time_str = datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S")
            parameters = ["0"] * 5 + [current_time_str]
        
            # Write to Excel
            write_to_excel(file_name, parameters)
            last_excel_write_time = current_time

    if current_time - last_timestamp_update_time >= 60:
        current_time_str = datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S")
        new_data = f"Param1\tParam2\tParam3\tParam4\tParam5\t{current_time_str}\n"
        q.put(new_data)
        last_timestamp_update_time = current_time

    root.after(100, process_queue, scrolled_window, q, lines_buffer, scroll_control, file_name, last_excel_write_time, last_timestamp_update_time)

def update_scrolled_window(scrolled_window, lines_buffer, scroll_control):
    while True:
        if scroll_control["auto_scroll"]:
            scrolled_window.config(state='normal')
            scrolled_window.delete(1.0, tk.END)  # Clear the ScrolledText widget
            scrolled_window.insert(tk.END, ''.join(lines_buffer))  # Insert updated buffer
            scrolled_window.yview(tk.END)  # Scroll to the end
            scrolled_window.config(state='disabled')
        time.sleep(0.1)  # Adjust as needed for smooth scrolling

def on_scroll(event, scrolled_window, scroll_control):
    scrolled_window.after_cancel(scroll_control["timer"])  # Cancel any existing timer
    scroll_control["auto_scroll"] = False  # Disable auto-scrolling
    scroll_control["timer"] = scrolled_window.after(SCROLL_DELAY, enable_auto_scroll, scroll_control)

def enable_auto_scroll(scroll_control):
    scroll_control["auto_scroll"] = True

def main():
    global root
    # Create the main window
    root = tk.Tk()
    root.title("ScrolledText Example with Thread and Circular Buffer")

    # Create a ScrolledText widget
    scrolled_window = scrolledtext.ScrolledText(root, wrap=tk.WORD, width=40, height=10)
    scrolled_window.pack(padx=10, pady=10)
    scrolled_window.config(state='disabled')

    # Create a queue
    q = queue.Queue()
    lines_buffer = []  # Initialize the lines buffer
    scroll_control = {"auto_scroll": True, "timer": None}  # Control dictionary for scrolling
    last_excel_write_time = time.time()
    last_timestamp_update_time = time.time()

    # Bind the scroll event
    scrolled_window.bind("<MouseWheel>", lambda event: on_scroll(event, scrolled_window, scroll_control))
    scrolled_window.bind("<Button-4>", lambda event: on_scroll(event, scrolled_window, scroll_control))  # For Linux scroll up
    scrolled_window.bind("<Button-5>", lambda event: on_scroll(event, scrolled_window, scroll_control))  # For Linux scroll down

    # Start the worker threads
    thread1 = threading.Thread(target=update_scrolled_window, args=(scrolled_window, lines_buffer, scroll_control))
    thread1.daemon = True
    thread1.start()

    thread2 = threading.Thread(target=process_queue, args=(scrolled_window, q, lines_buffer, scroll_control, "data_log.xlsx", last_excel_write_time, last_timestamp_update_time))
    thread2.daemon = True
    thread2.start()

    # Run the Tkinter event loop
    root.mainloop()

if __name__ == "__main__":
    main()
