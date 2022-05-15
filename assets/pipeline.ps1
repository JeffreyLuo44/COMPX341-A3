npm install
npm run build
#Check if there are no compile-time errors from building code
if ($? -eq $True){
  #Check if there is an argument for the custom commit message
  if ($args[0] -ne $null){
    cd ..
    git add .
    git commit -m $args[0]
    git push
    cd assets
    npm run start
  }else{
    Write-Host("Please specify a custom commit message as an argument!")
  }
}else{
  Write-Host "There are compile-time errors so commit/push is not allowed!"
}