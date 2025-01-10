# Androcrash v1.0

## Overview
**Androcrash v1.0** is a powerful tool designed for generating APK download links. It allows users to easily create and manage links for APK files. This tool is intended for educational and testing purposes only, and it should not be used for any illegal activities. 

The tool features a simple and user-friendly interface and was developed by **Technical Corp**.

---

## Features

- **APK Link Generation**: Easily generate direct and shortened links for APK files.
- **Logging**: Automatically logs generated links into a file for future reference.
- **Enhanced User Experience**: Intuitive and colorful terminal UI for better usability.
- **Menu Navigation**: 
  - Generate new links.
  - View previously generated links.
  - Learn about the tool.
  - Exit gracefully.

---

## Usage

### Requirements
- **Operating System**: Linux/Unix-based system.
- **Dependencies**: None (pre-installed tools like `bash` are sufficient).

### Installation
1. Clone or download the repository.
   ```bash
   git clone https://github.com/techcorp/androcrash.git
   ```
2. Move in tool directory.
   ```
   cd androcrash
   ``` 
3. Make the script executable:
   ```bash
   chmod +x androcrash.sh
   ```

### Running the Tool
Run the tool from the terminal:
   ```bash
   ./androcrash.sh
   ```

---

## Menu Options

1. **Generate APK Link**:
   - Enter the name of the APK file.
   - The tool provides both a direct and shortened link.
   - Links are logged into `generated_links.log`.

2. **View Generated Links**:
   - Displays all previously generated links from the log file.

3. **About the Tool**:
   - Displays tool information and disclaimer.

4. **Exit**:
   - Safely exits the tool.

---

## Logging
Generated links are stored in a log file named `generated_links.log` located in the same directory as the tool.

---

## Disclaimer
This tool is intended for **educational and testing purposes only**. The developers and maintainers of this tool are **not responsible** for any misuse or illegal activities conducted with it.

**Use responsibly!**

---

## Developed By
**Technical Corp**

For more tools and resources, visit [Technical Corp](https://github.com/techcorp).
