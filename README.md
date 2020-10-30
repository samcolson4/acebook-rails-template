# AceBook
![Build Status](https://api.travis-ci.com/samcolson4/acebook-team-rex.svg?branch=master)

[name of section](#section) | [name of section](#section) | [Team Rex](#Team-Rex) | [Technologies](#Technologies) 

### This project is currently deployed on Heroku <br>
### Link: https://acebook-trex.herokuapp.com/

A fullstack social media clone web application that demonstrates core functionality of Facebook. 
Developed using Ruby on Rails with a PostgreSQL database. Users are able to signup, make posts on the main newsfeed, add posts to individual users feeds, make comments on posts, add friends amongst other features. 
The timeframe for this project was 2 weeks.

## Quickstart

First, clone this repository. Then:

```bash
> bundle install
> bin/rails db:create
> bin/rails db:migrate

> bundle exec rspec # Run the tests to ensure it works
>  # Start the server at localhost:3000

> Run rails_best_practices in root folder of app: rails_best_practices . -c config/rails_best_practices.yml  
```

## Running Tests
from root folder, run the following command
```bash
$ rspec 
```
## Running Acebook
from root folder, run the following command
```bash
$ bin/rails server
```
In your browser, navigate to http://localhost:3000/ 

## Design and Features 


### Sign up 
![Sign up](https://i.imgur.com/rM9y0g7.gif)

![Process flow - sign up](https://app.lucidchart.com/publicSegments/view/e9ae1bf5-25d4-4e2d-b46d-8d6586f7ddd4/image.jpeg)
### Log in
![Login](https://imgur.com/0SrD34w.gif)

### post on homepage
![homepage post](https://imgur.com/dlj0wgd.gif)

![make a post](https://app.lucidchart.com/publicSegments/view/26e846c2-f0c3-4723-8706-daa6e8ec2aeb/image.jpeg)

![view posts](https://app.lucidchart.com/publicSegments/view/f48b2fd4-16e5-4315-9031-6a63dac866d1/image.jpeg)
### edit post
![edit post](https://imgur.com/D7FqrAG.gif)

![edit post](https://app.lucidchart.com/publicSegments/view/f0ffb18d-a37a-448e-b3a1-7a9806060b41/image.jpeg)

### Like & comment
![like comment](https://imgur.com/GaBIGeP.gif)

### View profile page & add friend
![add friend](https://imgur.com/cW2WTmu.gif)

![add friend](https://app.lucidchart.com/publicSegments/view/1c432959-3c9a-4449-9e19-628c715096b5/image.jpeg)

### Post on user profile
![wall post](https://imgur.com/sBrKzEe.gif)

### Log out
![log out](https://imgur.com/uYtjhUD.gif)

### Konami code
![konami code](https://imgur.com/8N8Tz7R.gif)


## Technologies

| Area                 | Technology                 |
| -------------------- | -------------------------- |
| Frameworks           | Ruby on Rails              |
| Languages            | Ruby, Javascript (jQuery), HTML5, CSS3|
| Database             | PostgreSQL                 |
| CI/CD                | Travis                     |
| Hosting              | Heroku                     |
| Testing and Coverage | RSpec, Capybara, Simplecov |

### Choice CI/CD Tool
Requirements:
1. We need it to be free.
2. We need a hosted solution.
3. We need it to help us, not hinder us. 

We found that Travis met the requirements above and it came recommended by the CEO of rails alongside a straightforward setup process.

## Team-Rex

Our wonderful team is made up of:

- [Courtenay Donald](https://github.com/c-donald)
- [Farhaan Ali](https://github.com/farhaan-ali)
- [Oliver Beney](https://github.com/obean)
- [Sam Colson](https://github.com/samcolson4)
- [Veronica Lee](https://github.com/veronicavlee89)

