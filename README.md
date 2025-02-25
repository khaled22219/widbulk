# widbulk - Bulk Data Download from the World Inequality Database (WID)
# Overview:
widbulk is a Stata module designed to facilitate the bulk downloading and extraction of data from the World Inequality Database (WID.world). The module retrieves the latest version of WID data directly from the WID.world website, including data series and metadata, extracts its contents, and stores them in a designated "Raw Folder" directory for further use in Stata.

# Description:
widbulk is a user-contributed Stata command that automates the process of downloading and extracting the most recent WID dataset. Upon execution, the module:

    1. Bulk downloads the data from the website.
    2. Unzips the downloaded folder, creating a folder named Raw Data, where all CSV files will be stored.
    3. Checks for duplicates and keeps only the one with full data (ignoring empty CSV files).
    4. Saves the data in the current directory by default, or allows you to specify a save location using the savepath option.
