#########################################
# grep by PowerShell
#########################################
function grep( $MatchPattern, $FilePattern, [switch]$Recurse ){
	if($Recurse){
		[array]$Files = dir $FilePattern -Recurse
	}
	else{
		[array]$Files = dir $FilePattern
	}

	foreach($File in $Files){
		$FileName = $File.FullName
		Select-String -Path $FileName -Pattern $MatchPattern -CaseSensitive
	}
}
