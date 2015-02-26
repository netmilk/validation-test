# Notes on validation results from Dredd

### Brands > Create a brand > Create a new brand
  - Response does not include `location` header
  - Response bode contains JSON error saying that entity already exits
  - It can be delete first in `before` hook via API or via interaction with fixtures on the database level

### Brands > Brand > Get brand for given brandName
  - Is valid against blueprint

### Brand Applications > BrandApp > Get brand's app for given appId
  - Property '/settings/signup/TW/twitterCallback' is missing in the JSON response body

### Brand Applications > Create Brand App > Create a new app in the brand
  - The `location` header is missing in the response
  - Response bode contains JSON error saying that entity already exits
  - It can be delete first in `before` hook via API or via interaction with fixtures on the database level

### Registration > Signup Options > Get signup settings for App
  - Different response header `content-type`: expected is `application/json`, real response contains `application/json; charset=UTF-8`

### Registration > Signup > Sign up using email
  - Different response header `content-type`: expected is `application/json`, real response contains `application/json; charset=UTF-8`

### Registration > Signup > Sign up usings facebook
  - Different response header `content-type`: expected is `application/json`, real response contains `application/json; charset=UTF-8`
  - Response JSON body has different structure, because it's returning an error saying that token given in the blueprint does not exits. It can be set in `before` hook by fixtures manipulation on the database level.

### Registration > Signup > Sign up using Twitter
  - Different response header `content-type`: expected is `application/json`, real response contains `application/json; charset=UTF-8`
  - Response JSON body has different structure, because it's returning an error saying that token given in the blueprint does not exits. It can be set in `before` hook by fixtures manipulation on the database level.

### Sessions > Login > Log in using email
  - Different response header `content-type`: expected is `application/json`, real response contains `application/json; charset=UTF-8`

### Sessions > Login > Log in using facebook
  - Different response header `content-type`: expected is `application/json`, real response contains `application/json; charset=UTF-8`
  - request is not a parseable json
  - response returns ugly stack trace saying it can parse request body

### Sessions > Login > Log in using twitter
  - Different response header `content-type`: expected is `application/json`, real response contains `application/json; charset=UTF-8`
  - Response JSON body has different structure, because it's returning an error saying that token given in the blueprint does not exits. It can be set in `before` hook by fixtures manipulation on the database level.

### Users > User Profile > Get user profile
  - Different response header `content-type`: expected is `application/json`, real response contains `application/json; charset=UTF-8`
  - Response JSON body has different structure, because it contains an error saying that provided token is not valid

### Users > Delete User Profile > Delete user profile
  - Different response header `content-type`: expected is `application/json`, real response contains `application/json; charset=UTF-8`
  - Our valiadation library can't parse string on root level, I'm investigating why
