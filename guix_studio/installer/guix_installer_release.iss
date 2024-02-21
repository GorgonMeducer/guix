; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{1D4932BC-ACD4-4292-9530-92C8BE2E58CF}
AppName=Eclipse ThreadX GUIX Studio
AppVersion=6.4.0.0
AppPublisher=Eclipse Foundation
AppPublisherURL=https://threadx.io/
AppSupportURL=https://threadx.io/
AppUpdatesURL=https://threadx.io/
DefaultDirName={sd}\Eclipse_ThreadX\GUIX_Studio_6.4
DefaultGroupName=Eclipse_ThreadX
CloseApplications=no
;LicenseFile=
OutputBaseFilename=guix_studio_setup_version_6.4.0.0
SetupIconFile=graphics\guix_1616icon.ico
Compression=lzma
SolidCompression=yes
ChangesAssociations=yes
UsePreviousAppDir=no
UsePreviousGroup=no
;SignedUninstaller=yes
;SignTool=

SourceDir=..\
OutputDir=installer\output

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[CustomMessages]
AskAssociate=Associate the GUIX Studio application with the .gxp file extension

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: checkedonce
Name: "associate"; Description: "{cm:AskAssociate}"; GroupDescription: "Other tasks"; Flags: checkedonce

[Files]
Source: "installer\vc_redist.x86.exe"; DestDir: "{tmp}"; Flags: nocompression createallsubdirs recursesubdirs deleteafterinstall
Source: "build\vs_2019\Release\guix_studio.exe"; DestDir: "{app}\studio"; DestName: "GUIX_Studio.exe"; Flags: ignoreversion

; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\GUIX Studio 6.4\GUIX Studio"; Filename: "{app}\studio\GUIX_Studio.exe"
Name: "{group}\GUIX Studio 6.4\GUIX Studio User's Guide"; Filename: "https://github.com/eclipse-threadx/rtos-docs"
Name: "{group}\GUIX Studio 6.4\GUIX User's Guide"; Filename: "https://github.com/eclipse-threadx/rtos-docs"
Name: "{group}\GUIX Studio 6.4\{cm:UninstallProgram,GUIX Studio}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\GUIX Studio 6.4.0.0"; Filename: "{app}\studio\GUIX_Studio.exe"; Tasks: desktopicon

[Registry]
Root: HKCR; Subkey: ".gxp"; ValueType: string; ValueName: ""; ValueData: "GUIX_Studio_Project"; Flags: uninsdeletevalue; Tasks: associate
Root: HKCR; Subkey: "GUIX_Studio_Project"; ValueType: string; ValueName: ""; ValueData: "GUIX Studio Project"; Flags: uninsdeletekey; Tasks: associate
Root: HKCR; Subkey: "GUIX_Studio_Project\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\studio\GUIX_Studio.exe,0"; Tasks: associate
Root: HKCR; Subkey: "GUIX_Studio_Project\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\studio\GUIX_Studio.exe"" ""%1"""; Tasks: associate

Root: HKLM; Subkey: "Software\Eclipse Foundation\GUIX\InstallDir"; ValueType: string; ValueName: ""; ValueData: "{app}";

[Run]
Filename: "{tmp}\vc_redist.x86.exe"; StatusMsg: "Installing Visual C++ 2015-2019 Redistributable(x86)"; Parameters:"/passive"

