## Nasa Nerds
This is an application to get information about Nasa exploits and as a user,
you can save your favorite images of the day from Nasa's database.

![image](https://user-images.githubusercontent.com/40776966/56242173-e2cb3b80-6054-11e9-8736-430c6f8a92ca.png)

## Local Setup

Clone down the repo
```
$ git clone git@github.com:jaaronbr/nasa_nerds.git
```

Install the gem packages
```
$ bundle
```

Set up the database
```
$ rake db:{create,migrate,seed}
```

Run the test suite:
```
$ rspec
```

## API Setup
We need to run Figaro to create a hidden .yml file to store our API keys locally

```
$ bundle exec figaro install
```

*Within config/application.yml, add the following Environment Variable keys:*

### Nasa's API
* Request Token @:
[https://api.nasa.gov/index.html#getting-started](https://api.nasa.gov/index.html#getting-started)

* NASA_API_KEY: `your api key from nasa`

## Deployment

This app is deployed on heroku at:

* [https://nasa-nerds-app.herokuapp.com/](https://nasa-nerds-app.herokuapp.com/)

## Technologies

* [vcr](https://github.com/vcr/vcr)
* [rails](https://rubyonrails.org/)

### Versions

* Ruby 2.4.5
* Rails 5.2.2

### Contributors

* Me   [https://github.com/jaaronbr](https://github.com/jaaronbr)

### Paths

### Schema

![image](https://user-images.githubusercontent.com/40776966/56101800-e0e26a80-5ee4-11e9-8038-79b7ff0d1f94.png)
