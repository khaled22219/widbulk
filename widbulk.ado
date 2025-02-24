**-----------------*****------------------------*****-----------------------****
**----* Stata Module for Bulk Downloading Data from the WID Database *------****
**-----------------*****------------------------*****-----------------------****

program drop _all
program define widbulk
    version 11
    syntax [, SAVEpath(string)]

    * Set default save path if not provided
    if "`savepath'" == "" {
        local savepath "`c(pwd)'"
    }

    * Define paths
    local URL "https://wid.world/bulk_download/wid_all_data.zip"
    local zipfile "`savepath'/wid_all_data.zip"
    local tempdir "`savepath'/Raw Data"

    * Download the folder from WID website: 
    di "Downloading Data from the World Inequality Database..." 
    copy "`URL'" "`zipfile'", replace

    * Check if the download was successful:
    capture confirm file "`zipfile'"
    if _rc != 0 {
        di as error "Download failed. Please check your internet connection!"
        exit
    }

    * Ensure the temporary extraction directory exists
    cap mkdir "`tempdir'"

    * Save the current working directory
    local olddir "`c(pwd)'"

    * Change the working directory to the temporary folder
    cd "`tempdir'"

    * Unzip the file (it will now extract directly inside `tempdir`)
    di "Unzipping the WID Downloaded Folder..."
    unzipfile "`zipfile'", replace

    * Restore the original working directory
    cd "`olddir'"
    di "WID Data Successfully Downloaded and Unzipped in: `tempdir'"
end

**-----------------*****------------------------*****-----------------------****
* Author: 
*		- Khaled Bendary
*		- World Inequality Lab,
*		- The Paris School of Economics.  
**-----------------*****------------------------*****-----------------------****
