@echo off
cd /d C:\sites\blog
start php artisan serve
start http://localhost:8000
echo Blog Laravel lancé !
pause