# checkWiFi
Скрипт PowerShell для Windows проверяет есть ли доступ в интернет, если доступа нет выключает/включает адаптер

Название своего сетевого адаптера Wi-Fi можно найти через PowerShell:
```Get-NetAdapter | format-table```

Для периодического запуска предполагается использовать системный Task Sheduler с таким способом запуска (Action):
```powershell -File "C:\Users\Administrator\Documents\checkWiFi.ps1"```

Для пинга с определённого интерфейса можно указать явным образом шлюз, привязанный к одному из интерфейсов
```ping -k 192.169.1.1 microsoft.com
        ^ default gateway for desired interface```