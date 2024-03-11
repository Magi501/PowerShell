$servers = @("LON-DC1", "LON-CL1", "LON-SVR1")

foreach ($server in $servers) {
        Write-Host "Checking server status for $server..."
            Test-Connection -ComputerName $server -Count 1 -ErrorAction SilentlyContinue | Out-Null
                if ($?) {
                            Write-Host "Server $server is up and running."
                                } else {
                                            Write-Host "Server $server is down."
                                }
                                }