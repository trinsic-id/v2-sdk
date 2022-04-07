# Copy python samples
$PythonInputDir = Resolve-Path "$PSScriptRoot/../python/samples"
$PythonOutputDir = Resolve-Path "$PSScriptRoot/python"
foreach ($Item in Get-ChildItem -Path $PythonInputDir -Include *_demo.py -Recurse) {
    Copy-Item -Path $Item.FullName -Destination $PythonOutputDir
}

# Copy java samples
$JavaInputDir = Resolve-Path "$PSScriptRoot/../java/src/test/java/trinsic"
$JavaOutputDir = Resolve-Path "$PSScriptRoot/java/src/main"
foreach ($Item in Get-ChildItem -Path $JavaInputDir -Include *Demo.java -Recurse) {
    Copy-Item -Path $Item.FullName -Destination $JavaOutputDir
}

# Copy ruby samples
$RubyInputDir = Resolve-Path "$PSScriptRoot/../ruby/test"
$RubyOutputDir = Resolve-Path "$PSScriptRoot/ruby"
foreach ($Item in Get-ChildItem -Path $RubyInputDir -Include *_demo.rb -Recurse) {
    Copy-Item -Path $Item.FullName -Destination $RubyOutputDir
}