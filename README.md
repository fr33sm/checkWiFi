# checkWiFi
Скрипт PowerShell для Windows проверяет есть ли доступ в интернет, если доступа нет выключает/включает адаптер

Для периодического запуска предполагается использовать системный Task Sheduler с таким способом запуска (Action):
powershell -File "C:\Users\Administrator\Documents\checkWiFi.ps1"
