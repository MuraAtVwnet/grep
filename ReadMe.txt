grep by PowerShell

■ これは何?
いわゆる grep の PowerShell 実装

■ 使い方
grep 正規表現 ファイルパターン -Recurse

■ 例
grep 18[0-9] c:\temp\*.txt -Recurse

■ Online Install 方法
# 以下を PowerShell プロンプトにコピペ

$ModuleName = "grep"
$GitHubName = "MuraAtVwnet"
Invoke-WebRequest -Uri https://raw.githubusercontent.com/$GitHubName/$ModuleName/master/OnlineInstall.ps1 -OutFile ~/OnlineInstall.ps1
& ~/OnlineInstall.ps1

■ Uninstall 方法
~/UnInstallgrep.ps1 を実行して下さい
(問い合わせが来たら Enter)

■ 動作確認環境
Windows PowerShell 5.1
PowerShell 7.4.5(Windows)

■ リポジトリ
https://github.com/MuraAtVwnet/grep
git@github.com:MuraAtVwnet/grep.git


■ Web site
PowerShell 版 grep
https://www.vwnet.jp/windows/PowerShell/2021080401/GrepByPowerShell.htm

