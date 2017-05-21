function My-Function {
<#	
    .NOTES
    ===========================================================================
    Created by: Markus Kraus
    Twitter: @VMarkus_K
    Private Blog: mycloudrevolution.com
    ===========================================================================
    Changelog:  

    ===========================================================================
    External Code Sources: 
    -
    ===========================================================================
    Tested Against Environment:
    vSphere Version: ESXi 6.0 U2, ESXi 6.5
    PowerCLI Version: PowerCLI 6.3 R1, PowerCLI 6.5 R1
    PowerShell Version: 4.0, 5.0
    OS Version: Windows 8.1, Server 2008 R2, Server 2012 R2
    Keyword: VMware
    ===========================================================================

    .DESCRIPTION

    .Example

    .PARAMETER Clustername

#Requires PS -Version 4.0
#Requires -Modules VMware.VimAutomation.Core, @{ModuleName="VMware.VimAutomation.Core";ModuleVersion="6.3.0.0"}
#>

[CmdletBinding()]
param( 
    [Parameter(Mandatory=$True, ValueFromPipeline=$False, Position=0)]
    [ValidateNotNullorEmpty()]
        [String] $myParameter
        
)

Begin {
  
}

Process {

  
}
}