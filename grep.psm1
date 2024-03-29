﻿#########################################
# grep by PowerShell
#########################################
function grep( [array]$MatchPattern, [array]$FilePattern, [switch]$Recurse ){
	if($Recurse){
		[array]$Files = Get-ChildItem $FilePattern -Recurse
	}
	else{
		[array]$Files = Get-ChildItem $FilePattern
	}

	foreach($File in $Files){
		$FileName = $File.FullName
		Select-String -Path $FileName -Pattern $MatchPattern -CaseSensitive
	}
}
