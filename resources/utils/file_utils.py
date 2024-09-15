import os
import glob

def Get_Latest_Downloaded_File(folder_path):
    """Return the latest downloaded file from the folder."""
    # Get list of all files in the folder
    files = glob.glob(os.path.join(folder_path, '*'))
    if not files:
        raise ValueError("No files found in the directory")
    # Sort files by modification time
    latest_file = max(files, key=os.path.getmtime)
    return latest_file
