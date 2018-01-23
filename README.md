# README

### This is an simple to scrap a site index page.

##How to run

```
git clone https://github.com/rokibulhassan/IndexScraping.git
cd IndexScraping
rake db:create
rake db:migrate
rails server
```

### It will run on localhost:3000


##API documentations

```
GET /crawlers.json
POST /crawlers.json
```

### GET /crawlers.json

* Open postman 


```
GET localhost:3000/crawlers.json
```

 
* Headers 
```
{ Content-Type: application/x-www-form-urlencoded }
```
* Sample response

```
[
    {
        "id": 1,
        "site_url": "google.com",
        "contents": "search",
        "created_at": "2018-01-23T06:25:55.151Z",
        "updated_at": "2018-01-23T06:25:55.151Z"
    }
]
```
  
### POST /crawlers.json  

* Open postman 


```
POST localhost:3000/crawlers.json
```

 
* Headers 
```
{ Content-Type: application/x-www-form-urlencoded }
```

* Body 
```
{ crawler: { site_url: "google.com" }
```

* Sample response

```
{
    "id": 1,
    "site_url": "google.com",
    "contents": "search",
    "created_at": "2018-01-23T06:25:55.151Z",
    "updated_at": "2018-01-23T06:25:55.151Z"
}
```