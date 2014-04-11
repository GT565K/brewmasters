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

### Creates Recipe
query
```
curl -v -H 'Content-Type: application/json' -H 'Accept: application/json' -X POST http://localhost:3000/api/v1/users/USER_AUTH_TOKEN/recipes -d "{\"recipe\":{\"name\":\"Granpas Recipe IPA 7\",\"description\":\"Granpas delicious IPA recipe\",\"water_grain_ratio\":\"1.2\",\"beer_type\":\"IPA\",\"mash_temperature\":\"170.0\",\"boil_duration\":\"60.00\",\"mash_duration\":\"55.00\",\"ingredients_attributes\":[{\"name\":\"my hopz 1\",\"type\":\"hop\",\"unit\":\"tbsp\"},{\"name\":\"my hopz 2\",\"type\":\"hop\",\"unit\":\"tbsp\"},{\"name\":\"my hopz 3\",\"type\":\"hop\",\"unit\":\"tbsp\"}]}}"

```

return the created object as json
```
{"id":10,"name":"Granpas Recipe IPA 7","description":"Granpas delicious IPA recipe","water_grain_ratio":1.2,"beer_type":"IPA","mash_temperature":170.0,"boil_duration":60,"mash_duration":55,"created_at":"2014-04-11T04:52:42.140Z","updated_at":"2014-04-11T04:52:42.140Z","ingredients":[{"id":23,"recipe_id":10,"name":"my hopz 1","type":"hop","description":null,"amount":null,"unit":"tbsp","add_time":null,"created_at":"2014-04-11T04:52:42.143Z","updated_at":"2014-04-11T04:52:42.143Z"},{"id":24,"recipe_id":10,"name":"my hopz 2","type":"hop","description":null,"amount":null,"unit":"tbsp","add_time":null,"created_at":"2014-04-11T04:52:42.146Z","updated_at":"2014-04-11T04:52:42.146Z"},{"id":25,"recipe_id":10,"name":"my hopz 3","type":"hop","description":null,"amount":null,"unit":"tbsp","add_time":null,"created_at":"2014-04-11T04:52:42.149Z","updated_at":"2014-04-11T04:52:42.149Z"}]}
```

### Retrieve Recipes
query
```
curl -v -H 'Content-Type: application/json' -H 'Accept: application/json' -X GET http://localhost:3000/api/v1/users/AUTH_USER_TOKEN/recipes

```

returns user recipes as list of json objects
```
[{"id":11,
	"name":"Granpas Recipe IPA 7",
	"description":"Granpas delicious IPA recipe",
	"water_grain_ratio":1.2,
	"beer_type":"IPA",
	"mash_temperature":170.0,
	"boil_duration":60,
	"mash_duration":55,
	"created_at":"2014-04-11T04:58:10.053Z",
	"updated_at":"2014-04-11T04:58:10.053Z",
	"ingredients":[{"id":26,"recipe_id":11,"name":"my hopz 1","type":"hop","description":null,"amount":null,"unit":"tbsp","add_time":null,"created_at":"2014-04-11T04:58:10.055Z","updated_at":"2014-04-11T04:58:10.055Z"},
									{"id":27,"recipe_id":11,"name":"my hopz 2","type":"hop","description":null,"amount":null,"unit":"tbsp","add_time":null,"created_at":"2014-04-11T04:58:10.057Z","updated_at":"2014-04-11T04:58:10.057Z"},
									{"id":28,"recipe_id":11,"name":"my hopz 3","type":"hop","description":null,"amount":null,"unit":"tbsp","add_time":null,"created_at":"2014-04-11T04:58:10.059Z","updated_at":"2014-04-11T04:58:10.059Z"}]
 },
 
 {"id":12,
 	"name":"Granpas Recipe IPA 6",
 	"description":"Granpas delicious IPA recipe",
 	"water_grain_ratio":1.2,
 	"beer_type":"IPA",
 	"mash_temperature":170.0,
 	"boil_duration":60,
 	"mash_duration":55,
 	"created_at":"2014-04-11T04:58:35.051Z",
 	"updated_at":"2014-04-11T04:58:35.051Z",
 	"ingredients":[{"id":29,"recipe_id":12,"name":"my hopz 1","type":"hop","description":null,"amount":null,"unit":"tbsp","add_time":null,"created_at":"2014-04-11T04:58:35.054Z","updated_at":"2014-04-11T04:58:35.054Z"},
 									{"id":30,"recipe_id":12,"name":"my hopz 2","type":"hop","description":null,"amount":null,"unit":"tbsp","add_time":null,"created_at":"2014-04-11T04:58:35.056Z","updated_at":"2014-04-11T04:58:35.056Z"},
 									{"id":31,"recipe_id":12,"name":"my hopz 3","type":"hop","description":null,"amount":null,"unit":"tbsp","add_time":null,"created_at":"2014-04-11T04:58:35.058Z","updated_at":"2014-04-11T04:58:35.058Z"}]
 	}]
```