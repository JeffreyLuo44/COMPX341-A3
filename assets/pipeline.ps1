npm install
npm run build
#Check if there are no compile-time errors from building code
if ($? -eq $True){
  cd ..
  git add .
  git commit -m "COMPX341-22A-A3 Committing from CI/CD Pipeline"
  git push origin master
  npm run start
}else{
  Write-Host "There are compile-time errors so commit/push is not allowed!"
}