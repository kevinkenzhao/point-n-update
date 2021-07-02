# psexec-point-and-fire

## Prerequisites

This script assumes...
1. the validity of local path C:\temp\{model number}
2. the accessibility of c$ administrative share on remote host
3. the presence of all Dell Update Packages (DUP) and Dell.ps1 at path C:\temp\{model number}

This script queries the user for a computer name in the format ``WE[0-9]{4}-[A-Z0-9]{1,}`` (eg. WE5060-JJ5FG63), where ``5060`` represents the computer model number and ``JJ5FG63`` the serial tag. The folder named after the computer model number in question is copied to ``C:\temp`` on the remote host. Upon transferring all related files, Psexec silently invokes ``Dell.ps1``, which executes each DUP (\*.exe) on path with the ``/s`` silent switch, sixty seconds apart.
