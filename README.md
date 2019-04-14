## Nasa Nerds
This is an application to get information about Nasa exploits and as a user,
you can save your favorite images of the day from Nasa's database.

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

## Within config/application.yml, add the following Environment Variable keys:

### Nasa's API
* Request Token @:
[https://api.nasa.gov/index.html#getting-started](https://api.nasa.gov/index.html#getting-started)

* NASA_API_KEY: `your api key from nasa`

## Deployment

This app is deployed on heroku at:

* 

## Technologies

* [vcr](https://github.com/vcr/vcr)
* [rails](https://rubyonrails.org/)

### Versions

* Ruby 2.4.5
* Rails 5.2.2

### Contributors

* Me   [https://github.com/jaaronbr](https://github.com/jaaronbr)

### Paths
