@echo off
title Edgeless Hub �ȸ��³���
color 3f

::У������Ŀ¼��ȷ��
if not exist edgeless-hub.exe (
    echo ���󣺸��³���Ӧ�ڴ�Ŀ¼����
    echo %~dp0
    pause
    exit
)

::��ʱ2sɱ������
echo ���ڵȴ������̽���...
@ping 127.0.0.1 -n 2 >nul
TASKKILL /F /IM edgeless-hub.exe /T

::���Ǹ����ļ�
xcopy /s /r /y .\core\Update\source\* .\

::�˳�
echo Edgeless Hub ������ɣ�������3s���˳�
@ping 127.0.0.1 -n 3 >nul
del /f /q "%0"