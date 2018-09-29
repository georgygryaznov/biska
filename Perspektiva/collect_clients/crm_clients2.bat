echo on
if "%time:~0,1%"==" " (set file=%date:~6,4%%date:~3,2%%date:~0,2%_0%time:~1,1%%time:~3,2%) else (set file=%date:~6,4%%date:~3,2%%date:~0,2%_%time:~0,2%%time:~3,2%)
echo %file%

FOR /L %%i IN (1,1,200) DO (
echo %%i
%BI_HOME%pdi-ce-8.1.0.0-365\data-integration\kitchen.bat /file:%BI_HOME%Perspektiva\collect_clients\j0_clients.kjb /level:Basic > log_%file%_%%i.txt
)