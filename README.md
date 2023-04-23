# checkWiFi
Скрипт PowerShell для Windows проверяет есть ли доступ в интернет, если доступа нет выключает/включает адаптер

Название своего сетевого адаптера Wi-Fi можно найти через PowerShell:
```Get-NetAdapter | format-table```

Для периодического запуска предполагается использовать системный Task Sheduler с таким способом запуска (Action):
```powershell -File "C:\Users\Administrator\Documents\checkWiFi.ps1"```