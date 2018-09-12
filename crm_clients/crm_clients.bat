call %BI_HOME%pdi-ce-8.1.0.0-365\data-integration\kitchen.bat /file:%BI_HOME%crm_clients\crm_clients_prepare.kjb /level:Debug > log.txt 
echo on
if "%time:~0,1%"==" " (set file=%date:~6,4%%date:~3,2%%date:~0,2%_0%time:~1,1%%time:~3,2%) else (set file=%date:~6,4%%date:~3,2%%date:~0,2%_%time:~0,2%%time:~3,2%)
echo %file%

FOR /L %%i IN (1,1,100) DO (
echo %%i
IF EXIST 1.txt call %BI_HOME%pdi-ce-8.1.0.0-365\data-integration\kitchen.bat /file:%BI_HOME%crm_clients\crm_clients_cycle.kjb /level:Debug > log_%file%_%%i.txt 
)