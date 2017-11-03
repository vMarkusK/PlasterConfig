$moduleName = '<%=$PLASTER_PARAM_ModuleName%>'
$moduleRoot = Resolve-Path "$PSScriptRoot\.."
Import-Module (Join-Path $moduleRoot "$moduleName.psd1") -force


$verbs = (Get-Command -Module $moduleName |
  ForEach-Object -Process {
    $_.Name.Split('-')[0]
  } |
Select-Object -Unique)
 
foreach ($verb in $verbs)
{
  $data = @()  
  $data += "$verb Commands"
  $data += '========================='
  $data += ''
  $data += "This page contains details on **$verb** commands."
  $data += ''
  foreach ($help in (Get-Command -Module $moduleName | Where-Object -FilterScript {
        $_.name -match $verb
  }))
  {
    $data += $help.Name
    $data += '-------------------------'
    $data += ''
    $data += Get-Help -Name $help.name -Detailed
    $data += ''
  }

  $data | Out-File -FilePath "$moduleRoot\docs\features\cmd_$($verb.ToLower()).rst" -Encoding utf8
}