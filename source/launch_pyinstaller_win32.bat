:: 1.Lance la compilation du code source
:: 2. Nettoie le répertoire build, renomme dist en "alignement-donnees-bnf" et y place le raccourci pour le lancement du fichier
:: 3. Compresse le répertoire obtenu
:: 4. Supprime le répertoire initial "alignement-donnees-bnf" 
@echo off
set /p version="version: "
python "C:/Anaconda/Lib/site-packages/PyInstaller-3.3.1/pyinstaller.py" "C:/Users/USER/Downloads/alignements-donnees-bnf-master/alignements-donnees-bnf-master/source/main.py"
rd /s /q build
copy alignement-donnees-bnf.bat dist
rename dist alignement-donnees-bnf
"C:/Program Files/7-Zip/7z" a -tzip ../bin/alignement-donnees-bnf_%version%_win32_py3.6.zip alignement-donnees-bnf/
rd /s /q alignement-donnees-bnf