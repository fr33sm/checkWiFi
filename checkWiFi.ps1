$adapterName = "Wi-Fi" # название сетевого адаптера Wi-Fi (найти через PowerShell: Get-NetAdapter | format-table)
$pingServer = "google.com" # адрес сервера для проверки подключения

function Test-Connection {
  $ping = New-Object System.Net.NetworkInformation.Ping
  $result = $ping.Send($pingServer)
  return $result.Status -eq "Success"
}

function Restart-WiFiAdapter {
  $adapter = Get-NetAdapter | Where-Object { $_.Name -eq $adapterName }
  if ($adapter) {
    Disable-NetAdapter -Name $adapterName -Confirm:$false
    Write-Host "Wi-Fi adapter disabled."
    Start-Sleep -Seconds 5
    Enable-NetAdapter -Name $adapterName
    Write-Host "Wi-Fi adapter enabled."
  }
}

if (Test-Connection) {
  Write-Host "Internet connection OK."
  break
}
else {
  Write-Host "Internet connection lost. Restarting Wi-Fi adapter."
  Restart-WiFiAdapter
}

# Добавляем задачу в Task Sheduler с таким способом запуска (Action): powershell -File "C:\Users\Administrator\Documents\checkWiFi.ps1"