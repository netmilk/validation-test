#info: Brands > Create a brand > Create a new brand
#info: Brands > Brand > Get brand for given brandName
#info: Brand Applications > BrandApp > Get brand's app for given appId
#info: Brand Applications > Create Brand App > Create a new app in the brand
#info: Brand Applications > Signup Options > Get signup settings for App
#info: Brand Applications > Signup > Sign up using email
#info: Brand Applications > User Profile > Get user profile
#info: Brand Applications > Delete User Profile > Delete user profile

{before,after}=require "hooks"
before "Brands > Create a brand > Create a new brand", (transaction,callback)->
  console.log "Creating a brand" 
  callback()
