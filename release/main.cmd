::@echo off
color 3f

::��ȡ�汾��
call readJson.cmd ..\package.json version
set "version=%getValue_%"
title ����Edgeless Hub %version%

::д��汾��
::call writeJson ..\package.json version 1.5.0