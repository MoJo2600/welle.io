; -- 64Bit.iss --
; Demonstrates installation of a program built for the x64 (a.k.a. AMD64)
; architecture.
; To successfully run this installation and the program it installs,
; you must have a "x64" edition of Windows.

; SEE THE DOCUMENTATION FOR DETAILS ON CREATING .ISS SCRIPT FILES!

[Setup]
AppName=welle.io
AppVersion=2.5-dev
WizardStyle=modern
DefaultDirName={autopf}\welle.io
DefaultGroupName=welle.io
UninstallDisplayIcon={app}\welle-io.exe
Compression=lzma2
SolidCompression=yes
OutputDir=.
; "ArchitecturesAllowed=x64" specifies that Setup cannot run on
; anything but x64.
ArchitecturesAllowed=x64
; "ArchitecturesInstallIn64BitMode=x64" requests that the install be
; done in "64-bit mode" on x64, meaning it should use the native
; 64-bit Program Files directory and the 64-bit view of the registry.
ArchitecturesInstallIn64BitMode=x64
OutputBaseFilename=welle-io_install_x64
LicenseFile=..\COPYING
SetupIconFile=..\src\welle-gui\icons\icon.ico

[Files]
Source: "bin/*"; DestDir: "{app}"; Flags: recursesubdirs

[Icons]
Name: "{group}\welle.io"; Filename: "{app}\welle-io.exe"
