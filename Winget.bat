@ECHO OFF
ECHO Hello World! Your first batch file was printed on the screen successfully. 


winget install eset.endpointsecurity
# needs serial key
winget install -e --id Google.Chrome

winget install -e --id Microsoft.Teams

winget install -e --id mcmilk.7zip-zstd

winget install -e --id Microsoft.VisualStudioCode

winget install -e --id Adobe.Acrobat.Reader.64-bit

winget install -e --id Ghisler.TotalCommander

PAUSE
