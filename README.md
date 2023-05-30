The aim here is to get your Xbench checklist into an Excel table and manage it in Excel. This way, you can edit your checklists easily and create new check items faster.
In this version, we are removing the need for Notepad++ and introducing powershell scripts. This will reduce the number of steps. I took help from ChatGPT to write the PowerShell script files.

To get your checklist into Excel
1) Download beforeimport.ps1 file from here.
2) Put your .xbckl file under the same folder as beforeimport.ps1 file.
3) Right click beforeimport.ps1 file and choose Run with PowerShell. 
4) Now open the excel file Xbench checklist manager.
5) You will see there is already data in the table but they are just sample. Please right click any row in the table and choose XML>Import 
6) Import the modified checklist file saved in step 3. You might need to change the XML Files (*.xml) filter to All Files (*.*) to see your modified Xbench checklist file which is in .xbckl file type. Once you choose the file and import, you will notice that the existing data will be gone and replaced by the data from the file you imported.
7) That’s it, now you have your checklist in Excel. You can make changes in Excel directly and maintain the checklist in Excel for future. However, please do NOT click Refresh or Refresh All buttons under Data section of Excel ribbon. This will get the original checklist back into excel file if you still have it in the original file location.

Now to export the modified checklist back to Xbench you need to follow below steps:

1) Right click any row in excel file and choose XML>Export
2) Give a name to the exported xml file and save it. Then change its extension to .xbckl.
3) Put this file under the same folder as afterexport.ps1 file.
4) Right click afterexport.ps1 file and choose Run with PowerShell. 
5) Go to Xbench and import your checklist.
