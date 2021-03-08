# For those special moments in life when you really wished
# that `dotnet clean` would just do what it's supposed to,
# instead being a total garbage.
Get-ChildItem -inc bin,obj -rec | Remove-Item -rec -force
