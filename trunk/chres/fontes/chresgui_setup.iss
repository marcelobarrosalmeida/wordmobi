; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
AppName=chres
AppVerName=chres
AppPublisher=Marcelo Barros de Almeida
AppPublisherURL=http://www.linuxabordo.comm.br
AppSupportURL=http://www.linuxabordo.comm.br
AppUpdatesURL=http://www.linuxabordo.comm.br
DefaultDirName={pf}\chres
DefaultGroupName=chres
AllowNoIcons=yes
InfoBeforeFile=beforeinst.txt
OutputDir=.\
OutputBaseFilename=chres_setup
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "brazilianportuguese"; MessagesFile: "compiler:Languages\BrazilianPortuguese.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "files\*"; DestDir: "{app}\"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Dirs]
Name: "{app}\firmware"

[Icons]
Name: "{group}\chres"; Filename: "{app}\chresgui.exe"; IconFilename: "{app}\chresgui.ico"
Name: "{group}\{cm:UninstallProgram,chres}"; Filename: "{uninstallexe}"; IconFilename: "{app}\trash.ico"
Name: "{userdesktop}\chres"; Filename: "{app}\chresgui.exe"; Tasks: desktopicon; IconFilename: "{app}\chresgui.ico"
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\chres"; Filename: "{app}\chresgui.exe"; Tasks: quicklaunchicon; IconFilename: "{app}\chresgui.ico"

[Run]
Filename: "{app}\chresgui.exe"; Description: "{cm:LaunchProgram,chres}"; Flags: nowait postinstall skipifsilent

