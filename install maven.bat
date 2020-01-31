:Paste this text into notepad
::Save as "myEnvironSetup.bat"; the ending must be .bat
::Right-Click this batch file you just saved, and Create Shortcut.
::Right-Click the shortcut you just created to elevate it: 
:: --- Right-Click, Shortcut Tab - Properties, Advanced, check box "Run as Admin"
::This modifier on the shortcut must be done in order to execute the "setx" command.


::RUN the SHORTCUT by double-clicking. Your system will prompt you, 
:: -- via User Account Control, to elevate the batch file. Accept.

::Your paths as you stated them
::C:\Program Files\Java\jdk1.7.0_55\bin
::C:\Users\a\Downloads\apache-maven-3.3.9-bin 


::Environmental VARS

::Warning of elevated command prompt
echo This script must have been run from an elevated command prompt, created by a shortcut. If you did not create a shortcut and elevate it described in the instructions in this file, then do so now and re-run the shortcut to this baatch file as Admin.
pause

echo your path for JAVA_HOME is: C:\Program Files\Java\jdk1.7.0_55
pause
echo your path for Apache_Maven is: C:\Users\a\Downloads\apache-maven-3.3.9-bin (1)\apache-maven-3.3.9\bin
pause


echo working...

setx JAVA_HOME "C:\Program Files\Java\jdk1.7.0_79"
setx JRE_HOME "C:\Program Files\Java\jdk1.7.0_79\jre\bin"
setx M2 "%M2_HOME%\bin"

::!!!Better directory  M2_HOME "C:\Program Files (x86)\Apache Software Foundation\apache-maven-3.1.1"
::!!!Better directory  mvn "C:\Program Files (x86)\Apache Software Foundation\apache-maven-3.1.1\bin"

setx M2_HOME "C:\Users\a\Downloads\apache-maven-3.3.9"
setx mvn "C:\Users\a\Downloads\apache-maven-3.3.9-bin (1)\apache-maven-3.3.9\bin"

setx MAVEN_OPTS "-Xms256m -Xmx512m"


::PATH setting

set "PATH=C:\Users\a\Downloads\apache-maven-3.3.9-bin (1)\apache-maven-3.3.9\bin;"%PATH%.
set "PATH=C:\Program Files\Java\jdk1.7.0_79;"%PATH%.
set "PATH=C:\Program Files\Java\jdk1.7.0_79\jre\lib;"%PATH%.
set "PATH=C:\Program Files\Java\jdk1.7.0_79\jre\bin;"%PATH%.
set "PATH=C:\Program Files\Java\jdk1.7.0_79\bin;"%PATH%.
set "PATH=%mvn%;"%PATH%.
set "PATH=%M2%;"%PATH%.



echo All Done.
pause
