$dist = "C:\Users\21142\blog\dist"
$tmp = Join-Path $env:TEMP "bd_" + (Get-Random)
Copy-Item -Recurse -Path $dist -Destination $tmp -Force
Set-Location $tmp
git init -q
git checkout -b gh-pages -q
git add -A
git commit -m "deploy: clean revert" -q
git remote add origin git@github.com:2114246181/blog.git
git push -f origin gh-pages
Set-Location C:\Users\21142\blog
Remove-Item -Recurse -Force $tmp
Write-Host "DONE"
