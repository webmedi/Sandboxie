rem 参考サイト http://d.hatena.ne.jp/nakamura001/20090203/1233652705
cd /d %~dp0

del /s *.log
del /s *.dmp
del /s *.runtime-xml
del /s *.pdb
del /s *.exe
del /s *.pak
del /s *.dll
rem del /s *.txt
del /s *.ddp
del /s *.bin
del /s *.sdf

rem 参考サイト http://tooljp.com/bat_qa/4B0ADEC0831C7D5F49257E4F000E1F58.html
rem 現在のディレクトリ配下の指定フォルダ削除するコマンド
rem コマンドプロンプトとバッチファイル内での記述の仕方は違うので注意する
for /R %%d in (Cooked) do rmdir /S /Q "%%d"
for /R %%d in (StagedBuilds) do rmdir /S /Q "%%d"
for /R %%d in (Logs) do rmdir /S /Q "%%d"
for /R %%d in (Backup) do rmdir /S /Q "%%d"
for /R %%d in (Build) do rmdir /S /Q "%%d"
for /R %%d in (Autosaves) do rmdir /S /Q "%%d"
for /R %%d in (.vs) do rmdir /S /Q "%%d"
for /R %%d in (Binaries) do rmdir /S /Q "%%d"
for /R %%d in (obj) do rmdir /S /Q "%%d"
for /R %%d in (HardwareSurvey) do rmdir /S /Q "%%d"