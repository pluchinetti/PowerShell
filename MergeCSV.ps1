$getFirstLine = $true

get-childItem "YOUR_DIRECTORY\*.txt" | foreach {
    $filePath = $_

    $lines =  $lines = Get-Content $filePath  
    $linesToWrite = switch($getFirstLine) {
           $true  {$lines}
           $false {$lines | Select -Skip 1}

    }

    $getFirstLine = $false  
    Add-Content "YOUR_DESTINATION_FILE" $linesToWrite
    }