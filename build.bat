@echo off
echo Building Camera Calibration Tool...
echo.


echo [3/4] Installing PyInstaller...
call uv pip install pyinstaller
if errorlevel 1 goto error

echo [4/4] Building executable...
call .venv\Scripts\activate.bat
pyinstaller main.spec
if errorlevel 1 goto error

echo.
echo ========================================
echo Build complete!
echo Executable: dist\CameraCalibrationTool.exe
echo ========================================
goto end

:error
echo.
echo ========================================
echo Build FAILED! Check error messages above.
echo ========================================
exit /b 1

:end
