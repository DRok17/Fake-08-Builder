@echo off
cd ".."
IF EXIST z-1CopyInput.bat (
    attrib -h -s z-1CopyInput.bat
    GOTO NEXT1
  ) ELSE (
    exit
  )
:NEXT1
@echo off
IF EXIST z-2PNGConvert.bat (
  attrib -h -s z-2PNGConvert.bat
  GOTO NEXT2
) ELSE (
  exit
)
:NEXT2
@echo off
IF EXIST z-3Resize.bat (
    attrib -h -s z-3Resize.bat
    GOTO NEXT3
  ) ELSE (
    exit
  )
:NEXT3
@echo off
IF EXIST z-4PNG-Pallete-256.bat (
    attrib -h -s z-4PNG-Pallete-256.bat
    GOTO NEXT4
  ) ELSE (
    exit
  )
:NEXT4
@echo off
IF EXIST z-5FAKE08-Builder-VPK.bat (
    attrib -h -s z-5FAKE08-Builder-VPK.bat
    GOTO NEXT5
  ) ELSE (
    exit
  )
:NEXT5
@echo off
IF EXIST pngquant.exe (
    attrib -h -s pngquant.exe
    GOTO NEXT6
  ) ELSE (
    exit
  )
:NEXT6
@echo off
IF EXIST scale.bat (
    attrib -h -s scale.bat
    GOTO NEXT7
  ) ELSE (
    exit
  )
:NEXT7
@echo off
IF EXIST vita-mksfoex.exe (
    attrib -h -s vita-mksfoex.exe
    GOTO NEXT8
  ) ELSE (
    exit
  )
:NEXT8
@echo off
IF EXIST vita-pack-vpk.exe (
    attrib -h -s vita-pack-vpk.exe
    GOTO NEXT9
  ) ELSE (
    exit
  )
:NEXT9
@echo off
IF EXIST .batch (
    attrib -h -s .batch
    GOTO EOF
  ) ELSE (
    exit
  )


:EOF
exit
