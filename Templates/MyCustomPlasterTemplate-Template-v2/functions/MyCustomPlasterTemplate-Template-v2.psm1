function <%=$PLASTER_PARAM_ModuleName%> {
<#
    .DESCRIPTION
       <%=$PLASTER_PARAM_ModuleName%>

    .NOTES
        File Name  : <%=$PLASTER_PARAM_ModuleName%>.psm1
        Author     : Markus Kraus
        Version    : 1.0
        State      : Ready

    .LINK
        https://mycloudrevolution.com/

    .EXAMPLE
        <%=$PLASTER_PARAM_ModuleName%>

    .PARAMETER Example
        My First Parameter

    #>

[CmdletBinding()]
param( 
    [Parameter(Mandatory=$False, ValueFromPipeline=$False, HelpMessage="My First Parameter")]
    [ValidateNotNullorEmpty()]
        [String] $myParameter
        
)

Begin {
  
}

Process {

  
}
}