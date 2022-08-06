GetSeed()
{
	file := FileOpen("seed.txt", "w")
	file.write()
	file.close()
	run, pythonw.exe find_seed.py
	Seed=
	while !Seed
	{
		FileRead, Seed, seed.txt
		Sleep, 10
	}
	clipboard := Seed
	SetKeyDelay, 30
	Send, {Tab}{Enter}{Tab}{Tab}{Tab}{Enter}{Tab}{Tab}{Enter}{Enter}{Enter}{Tab}{Tab}{Tab}{Tab}{Enter}{Tab}{Tab}{Tab}^v{Shift down}{Tab}{Tab}{Shift up}{Enter}

}
#IfWinActive ahk_exe javaw.exe
m::
GetSeed()