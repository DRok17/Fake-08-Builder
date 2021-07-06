:MENU
@ECHO OFF
mode 50,12
set /p defa=< .\.batch\def-vita-path.txt
ECHO                  FAKE08-BUILDER
ECHO.
ECHO ..................................................
ECHO.
@echo off
IF EXIST .\contents\bub-name.txt (
    @echo off
    set "BOM=EF BB BF"
    type ".\contents\bub-name.txt" | clip
    GOTO BUBNAME
  ) ELSE (
    GOTO BUBNAME
  )
:BUBNAME
@set /p title="Bubble Name: "
@echo off
IF EXIST .\contents\bub-id.txt (
    @echo off
    set "BOM=EF BB BF"
    type ".\contents\bub-id.txt" | clip
    GOTO BUBID
  ) ELSE (
    GOTO BUBID
  )
:BUBID
@set /p id="Title ID (9 char MAX [CAPS or #]): "
@echo off
IF EXIST .\.batch\folder.txt (
    @echo off
    set "BOM=EF BB BF"
    type ".\.batch\folder.txt" | clip
    GOTO BUBPATH
  ) ELSE (
    GOTO BUBPATH
  )
:BUBPATH
@set /p path="Cart/File Name(TEST.p8.png): "
@echo off
@echo|set /p="%path%"> ".batch/folder.txt"
@echo|set /p="%id%"> "contents/bub-id.txt"
@echo|set /p="%defa%/%path%"> "contents/path.txt"
@echo|set /p="%title%"> "contents/bub-name.txt"


vita-mksfoex -s TITLE_ID=%id% "%title%" contents/param.sfo
vita-pack-vpk -s contents/param.sfo -b contents/eboot.bin "%id%.vpk" -a icon0.png=sce_sys/icon0.png -a bg.png=sce_sys/livearea/contents/bg.png -a startup.png=sce_sys/livearea/contents/startup.png -a contents/template.xml=sce_sys/livearea/contents/template.xml -a contents/path.txt=args.txt

:CLNUP
move ".\*.vpk*" ".\VPK"
exit
