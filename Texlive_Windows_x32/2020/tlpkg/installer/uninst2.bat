rmdir /s /q "C:\texlive\2020\bin"
rmdir /s /q "C:\texlive\2020\readme-html.dir"
rmdir /s /q "C:\texlive\2020\readme-txt.dir"
if exist "C:\texlive\2020\temp" rmdir /s /q "C:\texlive\2020\temp"
rmdir /s /q "C:\texlive\2020\texmf-dist"
rmdir /s /q "C:\texlive\2020\tlpkg"
del /q "C:\texlive\2020\README.*"
del /q "C:\texlive\2020\LICENSE.*"
if exist "C:\texlive\2020\doc.html" del /q "C:\texlive\2020\doc.html"
del /q "C:\texlive\2020\index.html"
del /q "C:\texlive\2020\texmf.cnf"
del /q "C:\texlive\2020\texmfcnf.lua"
del /q "C:\texlive\2020\install-tl*.*"
del /q "C:\texlive\2020\tl-tray-menu.exe"
rem del /q "C:\texlive\2020\texlive.profile"
del /q "C:\texlive\2020\release-texlive.txt"
rmdir /s /q "C:/texlive/2020/texmf-var"
rmdir /s /q "C:/texlive/2020/texmf-config"
for %%f in ("C:\texlive\2020\*") do goto :done
for /d %%f in ("C:\texlive\2020\*") do goto :done
rd "C:\texlive\2020"
:done
@echo Done uninstalling TeXLive.
@pause
del "%0"
