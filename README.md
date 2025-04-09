# Backup and Rotation Script

This shell script automates the process of backing up data from a source directory to a specified backup directory, and performs a 5-day rotation to ensure older backups are deleted after a set period.

## Features

- Backs up files from a source directory to a user-specified backup directory.
- Maintains a 5-day backup rotation policy.
- Old backups (older than 5 days) are automatically deleted to free up space.
- Easy to use and configure.

## Prerequisites

- A Linux or Unix-like operating system (e.g., Ubuntu, CentOS, macOS).
- Bash shell (usually available by default on most Unix-like systems).
- Sufficient file system space in the backup directory.

## Usage

1. **Clone or download the script**:
   - You can either clone this repository or download the script directly to your server or machine.

2. **Make the script executable**:
   ```bash
   chmod +x script.sh
3. **Run the script:**
   ```bash
   ./backup_rotation.sh
   ```
4. **Input required parameters:**
   * The script will prompt you for the source folder path (the folder to be backed up).
   * The backup directory (where the backups will be stored).
   * You can also customize the backup rotation settings as per your requirements.

## Backup Rotation
The script will:

   * Create backups in the backup directory.

   * Keep backups for the last 5 days.

   * Automatically delete backups that are older than 5 days.
