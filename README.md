# psexec-point-and-fire

## Prerequisites

This script assumes...
1. the validity of local path C:\temp\\{model number}
2. the accessibility of c$ administrative share on remote host in terms of reachability and permissibility (i.e. BAT file should be run with administrative credentials for intended functionality)
3. the presence of all Dell Update Packages (DUP) and ``Dell.ps1`` at local path C:\temp\\{model number}
4. the existence of [PsExec.exe](https://download.sysinternals.com/files/PSTools.zip) in the same path as ``dell-update.bat``

This script queries the user for a computer name in the format ``WE[0-9]{4}-[A-Z0-9]{1,}`` (eg. WE5060-JJ5FG63), where ``5060`` represents the computer model number and ``JJ5FG63`` the serial tag. The folder named after the computer model number (eg. 5060) in question is copied from ``C:\temp`` on local host to that of the remote host. Upon transferring all related files, Psexec silently invokes ``Dell.ps1``, which executes each DUP (\*.exe) file on path with the ``/s`` silent switch, sixty seconds apart.
