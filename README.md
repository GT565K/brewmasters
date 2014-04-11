# brewmasters


## API
### Registration
```
curl -v -H 'Content-Type: application/json' -H 'Accept: application/json' -X POST http://brewmasters.herokuapp.com/api/v1/register -d "{\"user\":{\"email\":\"user4@example.com\",\"password\":\"secret1234\",\"password_confirmation\":\"secret1234\"}}"
```

returns an auth_token if successful

### Log In
Logging in simply returns a new auth_token
```
curl -v -H 'Content-Type: application/json' -H 'Accept: application/json' -X POST http://brewmasters.herokuapp.com/api/v1/login -d "{\"user\":{\"email\":\"user4@example.com\",\"password\":\"secret1234\"}}"
```

returns an auth_token if successful

### Log Out
Erases the user's auth_token
```
curl -v -H 'Content-Type: application/json' -H 'Accept: application/json' -X DELETE http://brewmasters.herokuapp.com/api/v1/logout -d "{\"user\":{\"email\":\"user4@example.com\",\"auth_token\":\"Kygf8q6JzFqjJEAWaVZN\"}}"
```

### Retrieve Recipes
Retrieves user's recipes

```
curl -v -H 'Content-Type: application/json' -H 'Accept: application/json' -X GET http://localhost:3000/api/v1/users/USER_AUTH_TOKEN/recipes
```

### Creates Recipe for user
```
curl -v -H 'Content-Type: application/json' -H 'Accept: application/json' -X POST http://localhost:3000/api/v1/users/USER_AUTH_TOKEN/recipes -d "{\"recipe\":{\"name\":\"Granpas Recipe IPA 2\",\"description\":\"Granpas delicious IPA recipe\",\"water_grain_ratio\":\"1.2\",\"beer_type\":\"IPA\",\"mash_temperature\":\"170.0\",\"boil_duration\":\"60.00\",\"mash_duration\":\"55.00\"}}"

```

