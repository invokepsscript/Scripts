$attachments = @()

$hostname = hostname

attachments += "O:\ProfilesFolder\Users\dinigeorge\Documents\Workbook_Dini.ods"

Send-SmtpMailMessage -To drush@evertz.com -From 5288IT@evertz.local -smtpserver mail -Attachments $attachments -Subject "Data Recovery" -Body $hostname
