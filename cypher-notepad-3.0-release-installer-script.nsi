; Script generated by the HM NIS Edit Script Wizard.
Unicode True

; HM NIS Edit Wizard helper defines
!define PRODUCT_NAME "Cypher Notepad"
!define PRODUCT_VERSION "3.0.0.0"
!define PRODUCT_PUBLISHER "Dong-Geon Lee"
!define PRODUCT_WEB_SITE "https://cypher-notepad.github.io/"
!define PRODUCT_DIR_REGKEY "Software\Microsoft\Windows\CurrentVersion\App Paths\Cypher-Notepad.exe"
!define PRODUCT_UNINST_KEY "Software\Microsoft\Windows\CurrentVersion\Uninstall\${PRODUCT_NAME}"
!define PRODUCT_UNINST_ROOT_KEY "HKLM"

; MUI 1.67 compatible ------
!include "MUI.nsh"

; MUI Settings
!define MUI_ABORTWARNING
!define MUI_ICON "${NSISDIR}\Contrib\Graphics\Icons\modern-install.ico"
!define MUI_UNICON "${NSISDIR}\Contrib\Graphics\Icons\modern-uninstall.ico"

; Language Selection Dialog Settings
!define MUI_LANGDLL_REGISTRY_ROOT "${PRODUCT_UNINST_ROOT_KEY}"
!define MUI_LANGDLL_REGISTRY_KEY "${PRODUCT_UNINST_KEY}"
!define MUI_LANGDLL_REGISTRY_VALUENAME "NSIS:Language"

; Welcome page
!insertmacro MUI_PAGE_WELCOME
; Components page
!insertmacro MUI_PAGE_COMPONENTS
; Directory page
!insertmacro MUI_PAGE_DIRECTORY
; Instfiles page
!insertmacro MUI_PAGE_INSTFILES
; Finish page
!define MUI_FINISHPAGE_RUN "$INSTDIR\Cypher-Notepad.exe"
!insertmacro MUI_PAGE_FINISH

; Uninstaller pages
!insertmacro MUI_UNPAGE_INSTFILES

; Language files
!insertmacro MUI_LANGUAGE "English"
!insertmacro MUI_LANGUAGE "French"
!insertmacro MUI_LANGUAGE "Italian"
!insertmacro MUI_LANGUAGE "Japanese"
!insertmacro MUI_LANGUAGE "Korean"
!insertmacro MUI_LANGUAGE "Spanish"

; MUI end ------

Name "${PRODUCT_NAME} ${PRODUCT_VERSION}"
OutFile "Cypher-Notepad-Setup-bundled-jre.exe"
InstallDir "$PROGRAMFILES\Cypher Notepad"
InstallDirRegKey HKLM "${PRODUCT_DIR_REGKEY}" ""
ShowInstDetails show
ShowUnInstDetails show

Function .onInit
  !insertmacro MUI_LANGDLL_DISPLAY
FunctionEnd

Section "Cypher Notepad" SEC01
  SetOutPath "$INSTDIR"
  SetOverwrite on
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\Cypher-Notepad.exe"
  CreateDirectory "$SMPROGRAMS\Cypher Notepad"
  CreateShortCut "$SMPROGRAMS\Cypher Notepad\Cypher Notepad.lnk" "$INSTDIR\Cypher-Notepad.exe"
  CreateShortCut "$DESKTOP\Cypher Notepad.lnk" "$INSTDIR\Cypher-Notepad.exe"
SectionEnd

Section "Bundled JRE" SEC02
  SetOutPath "$INSTDIR\jre1.8.0_241_min\bin"
  SetOverwrite on
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\bin\awt.dll"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\bin\dcpr.dll"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\bin\fontmanager.dll"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\bin\java.dll"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\bin\javaw.exe"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\bin\management.dll"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\bin\msvcr100.dll"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\bin\net.dll"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\bin\nio.dll"
  SetOutPath "$INSTDIR\jre1.8.0_241_min\bin\server"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\bin\server\jvm.dll"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\bin\server\Xusage.txt"
  SetOutPath "$INSTDIR\jre1.8.0_241_min\bin"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\bin\sunec.dll"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\bin\t2k.dll"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\bin\verify.dll"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\bin\zip.dll"
  SetOutPath "$INSTDIR\jre1.8.0_241_min"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\COPYRIGHT"
  SetOutPath "$INSTDIR\jre1.8.0_241_min\lib"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\lib\accessibility.properties"
  SetOutPath "$INSTDIR\jre1.8.0_241_min\lib\amd64"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\lib\amd64\jvm.cfg"
  SetOutPath "$INSTDIR\jre1.8.0_241_min\lib"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\lib\calendars.properties"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\lib\charsets.jar"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\lib\classlist"
  SetOutPath "$INSTDIR\jre1.8.0_241_min\lib\cmm"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\lib\cmm\CIEXYZ.pf"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\lib\cmm\GRAY.pf"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\lib\cmm\LINEAR_RGB.pf"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\lib\cmm\sRGB.pf"
  SetOutPath "$INSTDIR\jre1.8.0_241_min\lib"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\lib\content-types.properties"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\lib\currency.data"
  SetOutPath "$INSTDIR\jre1.8.0_241_min\lib\deploy"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\lib\deploy\ffjcext.zip"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\lib\deploy\messages.properties"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\lib\deploy\messages_de.properties"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\lib\deploy\messages_es.properties"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\lib\deploy\messages_fr.properties"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\lib\deploy\messages_it.properties"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\lib\deploy\messages_ja.properties"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\lib\deploy\messages_ko.properties"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\lib\deploy\messages_pt_BR.properties"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\lib\deploy\messages_sv.properties"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\lib\deploy\messages_zh_CN.properties"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\lib\deploy\messages_zh_HK.properties"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\lib\deploy\messages_zh_TW.properties"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\lib\deploy\splash.gif"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\lib\deploy\splash@2x.gif"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\lib\deploy\splash_11-lic.gif"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\lib\deploy\splash_11@2x-lic.gif"
  SetOutPath "$INSTDIR\jre1.8.0_241_min\lib"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\lib\deploy.jar"
  SetOutPath "$INSTDIR\jre1.8.0_241_min\lib\ext"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\lib\ext\sunec.jar"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\lib\ext\sunjce_provider.jar"
  SetOutPath "$INSTDIR\jre1.8.0_241_min\lib"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\lib\flavormap.properties"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\lib\fontconfig.bfc"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\lib\fontconfig.properties.src"
  SetOutPath "$INSTDIR\jre1.8.0_241_min\lib\fonts"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\lib\fonts\LucidaBrightDemiBold.ttf"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\lib\fonts\LucidaBrightDemiItalic.ttf"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\lib\fonts\LucidaBrightItalic.ttf"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\lib\fonts\LucidaBrightRegular.ttf"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\lib\fonts\LucidaSansDemiBold.ttf"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\lib\fonts\LucidaSansRegular.ttf"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\lib\fonts\LucidaTypewriterBold.ttf"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\lib\fonts\LucidaTypewriterRegular.ttf"
  SetOutPath "$INSTDIR\jre1.8.0_241_min\lib"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\lib\hijrah-config-umalqura.properties"
  SetOutPath "$INSTDIR\jre1.8.0_241_min\lib\images\cursors"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\lib\images\cursors\cursors.properties"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\lib\images\cursors\invalid32x32.gif"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\lib\images\cursors\win32_CopyDrop32x32.gif"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\lib\images\cursors\win32_CopyNoDrop32x32.gif"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\lib\images\cursors\win32_LinkDrop32x32.gif"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\lib\images\cursors\win32_LinkNoDrop32x32.gif"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\lib\images\cursors\win32_MoveDrop32x32.gif"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\lib\images\cursors\win32_MoveNoDrop32x32.gif"
  SetOutPath "$INSTDIR\jre1.8.0_241_min\lib"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\lib\jce.jar"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\lib\jsse.jar"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\lib\jvm.hprof.txt"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\lib\logging.properties"
  SetOutPath "$INSTDIR\jre1.8.0_241_min\lib\management"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\lib\management\jmxremote.access"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\lib\management\jmxremote.password.template"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\lib\management\management.properties"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\lib\management\snmp.acl.template"
  SetOutPath "$INSTDIR\jre1.8.0_241_min\lib"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\lib\management-agent.jar"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\lib\meta-index"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\lib\net.properties"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\lib\plugin.jar"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\lib\psfont.properties.ja"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\lib\psfontj2d.properties"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\lib\resources.jar"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\lib\rt.jar"
  SetOutPath "$INSTDIR\jre1.8.0_241_min\lib\security"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\lib\security\blacklist"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\lib\security\blacklisted.certs"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\lib\security\cacerts"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\lib\security\java.policy"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\lib\security\java.security"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\lib\security\javaws.policy"
  SetOutPath "$INSTDIR\jre1.8.0_241_min\lib\security\policy\limited"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\lib\security\policy\limited\local_policy.jar"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\lib\security\policy\limited\US_export_policy.jar"
  SetOutPath "$INSTDIR\jre1.8.0_241_min\lib\security\policy\unlimited"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\lib\security\policy\unlimited\local_policy.jar"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\lib\security\policy\unlimited\US_export_policy.jar"
  SetOutPath "$INSTDIR\jre1.8.0_241_min\lib\security"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\lib\security\trusted.libraries"
  SetOutPath "$INSTDIR\jre1.8.0_241_min\lib"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\lib\sound.properties"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\lib\tzdb.dat"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\lib\tzmappings"
  SetOutPath "$INSTDIR\jre1.8.0_241_min"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\LICENSE"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\README.txt"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\release"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\THIRDPARTYLICENSEREADME.txt"
  File "C:\Users\matth\Desktop\Cypher Notepad 3.0-Release\jre1.8.0_241_min\Welcome.html"
SectionEnd

Section -AdditionalIcons
  SetOutPath $INSTDIR
  WriteIniStr "$INSTDIR\${PRODUCT_NAME}.url" "InternetShortcut" "URL" "${PRODUCT_WEB_SITE}"
  CreateShortCut "$SMPROGRAMS\Cypher Notepad\Website.lnk" "$INSTDIR\${PRODUCT_NAME}.url"
  CreateShortCut "$SMPROGRAMS\Cypher Notepad\Uninstall.lnk" "$INSTDIR\uninst.exe"
SectionEnd

Section -Post
  WriteUninstaller "$INSTDIR\uninst.exe"
  WriteRegStr HKLM "${PRODUCT_DIR_REGKEY}" "" "$INSTDIR\Cypher-Notepad.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayName" "$(^Name)"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "UninstallString" "$INSTDIR\uninst.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayIcon" "$INSTDIR\Cypher-Notepad.exe"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "DisplayVersion" "${PRODUCT_VERSION}"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "URLInfoAbout" "${PRODUCT_WEB_SITE}"
  WriteRegStr ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}" "Publisher" "${PRODUCT_PUBLISHER}"
SectionEnd

; Section descriptions
!insertmacro MUI_FUNCTION_DESCRIPTION_BEGIN
  !insertmacro MUI_DESCRIPTION_TEXT ${SEC01} "(Required)The executable file of Cypher Notepad"
  !insertmacro MUI_DESCRIPTION_TEXT ${SEC02} "The bundled JRE for launching Cypher Notepad"
!insertmacro MUI_FUNCTION_DESCRIPTION_END


Function un.onUninstSuccess
  HideWindow
  MessageBox MB_ICONINFORMATION|MB_OK "$(^Name)는(은) 완전히 제거되었습니다."
FunctionEnd

Function un.onInit
!insertmacro MUI_UNGETLANGUAGE
  MessageBox MB_ICONQUESTION|MB_YESNO|MB_DEFBUTTON2 "$(^Name)을(를) 제거하시겠습니까?" IDYES +2
  Abort
FunctionEnd

Section Uninstall
  Delete "$INSTDIR\${PRODUCT_NAME}.url"
  Delete "$INSTDIR\uninst.exe"
  Delete "$INSTDIR\jre1.8.0_241_min\Welcome.html"
  Delete "$INSTDIR\jre1.8.0_241_min\THIRDPARTYLICENSEREADME.txt"
  Delete "$INSTDIR\jre1.8.0_241_min\release"
  Delete "$INSTDIR\jre1.8.0_241_min\README.txt"
  Delete "$INSTDIR\jre1.8.0_241_min\LICENSE"
  Delete "$INSTDIR\jre1.8.0_241_min\lib\tzmappings"
  Delete "$INSTDIR\jre1.8.0_241_min\lib\tzdb.dat"
  Delete "$INSTDIR\jre1.8.0_241_min\lib\sound.properties"
  Delete "$INSTDIR\jre1.8.0_241_min\lib\security\trusted.libraries"
  Delete "$INSTDIR\jre1.8.0_241_min\lib\security\policy\unlimited\US_export_policy.jar"
  Delete "$INSTDIR\jre1.8.0_241_min\lib\security\policy\unlimited\local_policy.jar"
  Delete "$INSTDIR\jre1.8.0_241_min\lib\security\policy\limited\US_export_policy.jar"
  Delete "$INSTDIR\jre1.8.0_241_min\lib\security\policy\limited\local_policy.jar"
  Delete "$INSTDIR\jre1.8.0_241_min\lib\security\javaws.policy"
  Delete "$INSTDIR\jre1.8.0_241_min\lib\security\java.security"
  Delete "$INSTDIR\jre1.8.0_241_min\lib\security\java.policy"
  Delete "$INSTDIR\jre1.8.0_241_min\lib\security\cacerts"
  Delete "$INSTDIR\jre1.8.0_241_min\lib\security\blacklisted.certs"
  Delete "$INSTDIR\jre1.8.0_241_min\lib\security\blacklist"
  Delete "$INSTDIR\jre1.8.0_241_min\lib\rt.jar"
  Delete "$INSTDIR\jre1.8.0_241_min\lib\resources.jar"
  Delete "$INSTDIR\jre1.8.0_241_min\lib\psfontj2d.properties"
  Delete "$INSTDIR\jre1.8.0_241_min\lib\psfont.properties.ja"
  Delete "$INSTDIR\jre1.8.0_241_min\lib\plugin.jar"
  Delete "$INSTDIR\jre1.8.0_241_min\lib\net.properties"
  Delete "$INSTDIR\jre1.8.0_241_min\lib\meta-index"
  Delete "$INSTDIR\jre1.8.0_241_min\lib\management-agent.jar"
  Delete "$INSTDIR\jre1.8.0_241_min\lib\management\snmp.acl.template"
  Delete "$INSTDIR\jre1.8.0_241_min\lib\management\management.properties"
  Delete "$INSTDIR\jre1.8.0_241_min\lib\management\jmxremote.password.template"
  Delete "$INSTDIR\jre1.8.0_241_min\lib\management\jmxremote.access"
  Delete "$INSTDIR\jre1.8.0_241_min\lib\logging.properties"
  Delete "$INSTDIR\jre1.8.0_241_min\lib\jvm.hprof.txt"
  Delete "$INSTDIR\jre1.8.0_241_min\lib\jsse.jar"
  Delete "$INSTDIR\jre1.8.0_241_min\lib\jce.jar"
  Delete "$INSTDIR\jre1.8.0_241_min\lib\images\cursors\win32_MoveNoDrop32x32.gif"
  Delete "$INSTDIR\jre1.8.0_241_min\lib\images\cursors\win32_MoveDrop32x32.gif"
  Delete "$INSTDIR\jre1.8.0_241_min\lib\images\cursors\win32_LinkNoDrop32x32.gif"
  Delete "$INSTDIR\jre1.8.0_241_min\lib\images\cursors\win32_LinkDrop32x32.gif"
  Delete "$INSTDIR\jre1.8.0_241_min\lib\images\cursors\win32_CopyNoDrop32x32.gif"
  Delete "$INSTDIR\jre1.8.0_241_min\lib\images\cursors\win32_CopyDrop32x32.gif"
  Delete "$INSTDIR\jre1.8.0_241_min\lib\images\cursors\invalid32x32.gif"
  Delete "$INSTDIR\jre1.8.0_241_min\lib\images\cursors\cursors.properties"
  Delete "$INSTDIR\jre1.8.0_241_min\lib\hijrah-config-umalqura.properties"
  Delete "$INSTDIR\jre1.8.0_241_min\lib\fonts\LucidaTypewriterRegular.ttf"
  Delete "$INSTDIR\jre1.8.0_241_min\lib\fonts\LucidaTypewriterBold.ttf"
  Delete "$INSTDIR\jre1.8.0_241_min\lib\fonts\LucidaSansRegular.ttf"
  Delete "$INSTDIR\jre1.8.0_241_min\lib\fonts\LucidaSansDemiBold.ttf"
  Delete "$INSTDIR\jre1.8.0_241_min\lib\fonts\LucidaBrightRegular.ttf"
  Delete "$INSTDIR\jre1.8.0_241_min\lib\fonts\LucidaBrightItalic.ttf"
  Delete "$INSTDIR\jre1.8.0_241_min\lib\fonts\LucidaBrightDemiItalic.ttf"
  Delete "$INSTDIR\jre1.8.0_241_min\lib\fonts\LucidaBrightDemiBold.ttf"
  Delete "$INSTDIR\jre1.8.0_241_min\lib\fontconfig.properties.src"
  Delete "$INSTDIR\jre1.8.0_241_min\lib\fontconfig.bfc"
  Delete "$INSTDIR\jre1.8.0_241_min\lib\flavormap.properties"
  Delete "$INSTDIR\jre1.8.0_241_min\lib\ext\sunjce_provider.jar"
  Delete "$INSTDIR\jre1.8.0_241_min\lib\ext\sunec.jar"
  Delete "$INSTDIR\jre1.8.0_241_min\lib\deploy.jar"
  Delete "$INSTDIR\jre1.8.0_241_min\lib\deploy\splash_11@2x-lic.gif"
  Delete "$INSTDIR\jre1.8.0_241_min\lib\deploy\splash_11-lic.gif"
  Delete "$INSTDIR\jre1.8.0_241_min\lib\deploy\splash@2x.gif"
  Delete "$INSTDIR\jre1.8.0_241_min\lib\deploy\splash.gif"
  Delete "$INSTDIR\jre1.8.0_241_min\lib\deploy\messages_zh_TW.properties"
  Delete "$INSTDIR\jre1.8.0_241_min\lib\deploy\messages_zh_HK.properties"
  Delete "$INSTDIR\jre1.8.0_241_min\lib\deploy\messages_zh_CN.properties"
  Delete "$INSTDIR\jre1.8.0_241_min\lib\deploy\messages_sv.properties"
  Delete "$INSTDIR\jre1.8.0_241_min\lib\deploy\messages_pt_BR.properties"
  Delete "$INSTDIR\jre1.8.0_241_min\lib\deploy\messages_ko.properties"
  Delete "$INSTDIR\jre1.8.0_241_min\lib\deploy\messages_ja.properties"
  Delete "$INSTDIR\jre1.8.0_241_min\lib\deploy\messages_it.properties"
  Delete "$INSTDIR\jre1.8.0_241_min\lib\deploy\messages_fr.properties"
  Delete "$INSTDIR\jre1.8.0_241_min\lib\deploy\messages_es.properties"
  Delete "$INSTDIR\jre1.8.0_241_min\lib\deploy\messages_de.properties"
  Delete "$INSTDIR\jre1.8.0_241_min\lib\deploy\messages.properties"
  Delete "$INSTDIR\jre1.8.0_241_min\lib\deploy\ffjcext.zip"
  Delete "$INSTDIR\jre1.8.0_241_min\lib\currency.data"
  Delete "$INSTDIR\jre1.8.0_241_min\lib\content-types.properties"
  Delete "$INSTDIR\jre1.8.0_241_min\lib\cmm\sRGB.pf"
  Delete "$INSTDIR\jre1.8.0_241_min\lib\cmm\LINEAR_RGB.pf"
  Delete "$INSTDIR\jre1.8.0_241_min\lib\cmm\GRAY.pf"
  Delete "$INSTDIR\jre1.8.0_241_min\lib\cmm\CIEXYZ.pf"
  Delete "$INSTDIR\jre1.8.0_241_min\lib\classlist"
  Delete "$INSTDIR\jre1.8.0_241_min\lib\charsets.jar"
  Delete "$INSTDIR\jre1.8.0_241_min\lib\calendars.properties"
  Delete "$INSTDIR\jre1.8.0_241_min\lib\amd64\jvm.cfg"
  Delete "$INSTDIR\jre1.8.0_241_min\lib\accessibility.properties"
  Delete "$INSTDIR\jre1.8.0_241_min\COPYRIGHT"
  Delete "$INSTDIR\jre1.8.0_241_min\bin\zip.dll"
  Delete "$INSTDIR\jre1.8.0_241_min\bin\verify.dll"
  Delete "$INSTDIR\jre1.8.0_241_min\bin\t2k.dll"
  Delete "$INSTDIR\jre1.8.0_241_min\bin\sunec.dll"
  Delete "$INSTDIR\jre1.8.0_241_min\bin\server\Xusage.txt"
  Delete "$INSTDIR\jre1.8.0_241_min\bin\server\jvm.dll"
  Delete "$INSTDIR\jre1.8.0_241_min\bin\nio.dll"
  Delete "$INSTDIR\jre1.8.0_241_min\bin\net.dll"
  Delete "$INSTDIR\jre1.8.0_241_min\bin\msvcr100.dll"
  Delete "$INSTDIR\jre1.8.0_241_min\bin\management.dll"
  Delete "$INSTDIR\jre1.8.0_241_min\bin\javaw.exe"
  Delete "$INSTDIR\jre1.8.0_241_min\bin\java.dll"
  Delete "$INSTDIR\jre1.8.0_241_min\bin\fontmanager.dll"
  Delete "$INSTDIR\jre1.8.0_241_min\bin\dcpr.dll"
  Delete "$INSTDIR\jre1.8.0_241_min\bin\awt.dll"
  Delete "$INSTDIR\Cypher-Notepad.exe"

  Delete "$SMPROGRAMS\Cypher Notepad\Uninstall.lnk"
  Delete "$SMPROGRAMS\Cypher Notepad\Website.lnk"
  Delete "$DESKTOP\Cypher Notepad.lnk"
  Delete "$SMPROGRAMS\Cypher Notepad\Cypher Notepad.lnk"

  RMDir "$SMPROGRAMS\Cypher Notepad"
  RMDir "$INSTDIR\jre1.8.0_241_min\lib\security\policy\unlimited"
  RMDir "$INSTDIR\jre1.8.0_241_min\lib\security\policy\limited"
  RMDir "$INSTDIR\jre1.8.0_241_min\lib\security"
  RMDir "$INSTDIR\jre1.8.0_241_min\lib\management"
  RMDir "$INSTDIR\jre1.8.0_241_min\lib\images\cursors"
  RMDir "$INSTDIR\jre1.8.0_241_min\lib\fonts"
  RMDir "$INSTDIR\jre1.8.0_241_min\lib\ext"
  RMDir "$INSTDIR\jre1.8.0_241_min\lib\deploy"
  RMDir "$INSTDIR\jre1.8.0_241_min\lib\cmm"
  RMDir "$INSTDIR\jre1.8.0_241_min\lib\amd64"
  RMDir "$INSTDIR\jre1.8.0_241_min\lib"
  RMDir "$INSTDIR\jre1.8.0_241_min\bin\server"
  RMDir "$INSTDIR\jre1.8.0_241_min\bin"
  RMDir "$INSTDIR\jre1.8.0_241_min"
  RMDir "$INSTDIR"

  DeleteRegKey ${PRODUCT_UNINST_ROOT_KEY} "${PRODUCT_UNINST_KEY}"
  DeleteRegKey HKLM "${PRODUCT_DIR_REGKEY}"
  SetAutoClose true
SectionEnd