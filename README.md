# TinyUrl

TinyUrl is a app to shorten url like other service.

Pass a long url and get a tiny url instead.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine to try.

### Prerequisites

Assuming you have installed `git`, `ruby`, `rails` and `rvm` or any other `ruby version manager` like `rbenv`.


### Installing

Additionaly you need one gem `colorize`

```
git clone git@github.com:grsahil20/tiny_url.git
cd tiny_url
```

This will automatically create a gemset name `tinymind`. Install `bundler` if you don't have.

`gem install bundler`

Now install all other gems using command

```
bundle install
```

Next, create datbase and run migrations.


```
rake db:create db:migrate
```


## Running the program

Start server

```
rails s
```

Open browser tab and go to `http://localhost:3000`

Here you will see history oof shorten urls.

Live demo can be seen at [here on heroku](https://mv-tinyurl.herokuapp.com)

## Author

**Sahil Grover**


## License

Feel free to copy/edit/use code anywhere :)
