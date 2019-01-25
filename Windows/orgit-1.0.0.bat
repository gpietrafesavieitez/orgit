:: Orgit 1.0.0
:: Gabriel P.
:: Batch
:: Script para facilitar la organizacion de repositorios en Windows.

@ECHO off
CLS

:: Variables para el usuario
SET git=https://github.com/gpietrafesavieitez
SET dir=D:\Biblioteca\Documentos\NetBeansProjects

SET /p op=La ubicacion por defecto es "%dir%" desea cambiarla? (y/n): 

IF %op%==y (
	SET /p dir=Especifique la nueva ubicacion de destino: 
)

:: Borra el arbol y luego lo crea
RD %dir%\DAM /s /q
MD %dir%\DAM\COD\Pruebas %dir%\DAM\PROG\Boletines %dir%\DAM\PROG\Extras %dir%\DAM\PROG\Pruebas

:: Clonacion
ECHO Clonando archivos, por favor espere...
git clone -q %git%/COD_Pruebas.git %dir%\DAM\COD\Pruebas
git clone -q %git%/PROG_Extras.git %dir%\DAM\PROG\Extras
git clone -q %git%/PROG_Pruebas.git %dir%\DAM\PROG\Pruebas

:: Muestra arbol
SET /p op=Clonacion finalizada. Desea ver el nuevo arbol de directorios creado? (y/n): 

IF %op%==y (
	CLS
	TREE /f %dir%\DAM
	PAUSE >nul
)

CLS
ECHO Gracias por usarme :) presione cualquier tecla para finalizar...
PAUSE >nul

EXIT
