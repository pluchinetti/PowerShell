$folder="C:\Users\pluch\Desktop\Scorm_Ceibal\Biología" #target folder containing files
$csv="C:\Users\pluch\Desktop\2018\Finalizado\Abril\SCORM\20180412_TestPowerShell.csv" #path to CSV file

cd ($folder); import-csv ($csv)| foreach {rename-item -path $_.path -newname $_.filename}