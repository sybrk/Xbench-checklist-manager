The aim here is to get your Xbench checklist into an Excel table and manage it in Excel. This way, you can edit your checklists easily and create new check items faster.
Since I am not quite familiar with Excel VBA code, I found it easier to map the xml file to Excel and handle some bulk changes in the xml files via Notepad++ macros.
I am sure someone having average VBA skills can do better and remove the need for Notepad++ macros.

To get your checklist into Excel
1) Install Notepad ++ from here if you do not have it already: https://notepad-plus-plus.org/downloads/
2) Download the shortcuts.xml and Xbench checklist manager.xlsx from here
3) You need to go here C:\Users\%username%\AppData\Roaming\Notepad++ 
4) Make sure Notepad++ is not running. If running, please close it. 
5) Rename the shortcuts.xml file as shortcuts_old.xml to save a backup.
6) Copy the shortcuts.xml file provided to you into that path. This is to get two macros for Notepad++ which will be used in the process.
7) Now open your Xbench checklist in Notepad++.
8) Go to Macro from top menu and choose Xbench_import
9) Save your Xbench checklist after running the macro.
10) Now open the excel file Xbench checklist manager.
11) You will see there is already data in the table but they are just sample. Please right click any row in the table and choose XML>Import 
12) Import the modified checklist file saved in step 8. You might need to change the XML Files (*.xml) filter to All Files (*.*) to see your modified Xbench checklist file which is in .xbckl file type. Once you choose the file and import, you will notice that the existing data will be gone and replaced by the data from the file you imported.
13) That’s it, now you have your checklist in Excel. You can make changes in Excel directly and maintain the checklist in Excel for future. However, please do NOT click Refresh or Refresh All buttons under Data section of Excel ribbon. This will get the original checklist back into excel file if you still have it in the original file location.

Now to export the modified checklist back to Xbench you need to follow below steps:

1) Right click any row in excel file and choose XML>Export
2) Give a name to the exported xml file and save it.
3) Open the exported file in Notepad++
4) Go to Macro from top menu and click Xbench_export
5) Save the file in Notepad++ and you have your checklist ready to be used in Xbench.
6) When exported from Excel the checklist is saved in .xml file type. You can directly import it into Xbench or change the filetype as .xbckl
7) Go to Xbench and import your checklist.
