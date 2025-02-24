{smcl}
{* *! version 1.0.0 Date: 24-02-2025 *}
{hline}
help for {hi:widbulk } {right:A Module for Bulk Data Download from the WID Database}
{hline}

{title:Title }

{p 4 4 2}
{bf:widbulk } - Download and unzip data from the World Inequality Database (WID)

{title:Syntax }

{p 8 8 2}
{cmd:widbulk } [, {cmdab:savepath }({it:string })]

{p 4 4 2}
where {it:string } is the directory path where the downloaded zipped data will be saved and extracted.

{title:Description }

{p 4 4 2}
{cmd:widbulk } is a user-contributed Stata command that allows bulk downloading and unzipping of the most up-to-date data from the World Inequality Database (WID). The program downloads a ZIP file containing all WID data (series data, metadata, etc.), then creates a {bf:Raw Data} folder inside the specified directory where the data will be locally extracted and saved. If no directory is specified using the {cmd:savepath } option, or if the {cmd:savepath } option itself is not specified, the {bf:Raw Data} folder along with the extracted data will be saved in the current working directory.

{title:Options }

{p 4 4 2}
{cmdab:savepath }({it:string }) specifies the directory path where the bulk downloaded data will be saved. It is also the path where a {bf:Raw Data} folder will be created, and the unzipped files will be locally extracted and saved. If this option is not specified or left empty, the files will be saved in the current working directory. Users are advised to use {cmdab:pwd } to check where the data will be saved.

{title:Examples }

{p 4 4 2}

1. Download and unzip WID data to the current working directory:

{p 8 8 2}
{cmd:. widbulk}

{p 4 4 2}
2. Download and unzip WID data to a specific directory:

{p 8 8 2}
{cmd:. widbulk, savepath("C:/path/to/your/directory")}

{title:Remarks }

{p 4 4 2}

1. Ensure that you have an active internet connection before running the command.

{p 4 4 2}

2. The program will create a subdirectory named {bf:Raw Data} during the unzipping process inside the specified path (or the current directory if no path is specified). The individual CSV files will be available in this folder.

{p 4 4 2}

3. This command is fully independent of the {cmd:wid } command, which allows direct downloading of data from the website without sending a query to the website.

{title:Author }

{p 4 4 2}
Khaled Bendary

{p 4 4 2}
The World Inequality Lab

{p 4 4 2}
Paris School of Economics

{p 4 4 2}
Khaled.bendary@psemail.com

{title:Acknowledgment }

{p 4 4 2}
Special thanks to Ignacio Flores, South America & Statistical Methods Coordinator at the World Inequality Lab, for his guidance and insights in creating this tool.

{hline}

