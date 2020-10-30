# AceBook
![Build Status](https://api.travis-ci.com/samcolson4/acebook-team-rex.svg?branch=master)

[Quickstart](#Quickstart) | [Running Tests](#Running-Tests) | [Running Acebook](#Running-Acebook) | [Design and Features](#design-and-features) | [Technologies](#Technologies) | [Team Rex](#Team-Rex)

### Our project is deployed on Heroku [here](https://acebook-trex.herokuapp.com/).

A fullstack social media clone web application that demonstrates core functionality of Facebook. 
Developed using Ruby on Rails with a PostgreSQL database. Users are able to signup, make posts on the main newsfeed, add posts to individual users feeds, make comments on posts, add friends amongst other features. 
The timeframe for this project was 2 weeks.

## Quickstart

First, clone this repository. Then:

Databases
```bash
$ brew install postgresql
$ brew services start postgresql
$ psql postgres
```

```bash
$ bundle exec rspec # Run the tests to ensure it works
$ rails s #Start the server at localhost:3000

$ Run rails_best_practices in root folder of app
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

It is also running on Heroku [here](https://acebook-trex.herokuapp.com/).


## Design and Features 

### Sign up 
```bash
As a user
So that I can use Acebook
I would like to sign up
```
![Process flow - sign up](https://app.lucidchart.com/publicSegments/view/e9ae1bf5-25d4-4e2d-b46d-8d6586f7ddd4/image.jpeg)
![Sign up](https://i.imgur.com/rM9y0g7.gif)

### Log in
```bash
As a user
So I can use Acebook again
I would like to be able to login
```
```bash
As a developer
to increase security
I want users to have passwords between 6-10 characters
```

![Login](https://imgur.com/0SrD34w.gif)

### post on homepage
```bash
As a user
So that I can communicate my thoughts
I want to make a post
```

```bash
As a user
So I can style my posts
I want to linebreaks to appear where I put them in my posts
```

![make a post](https://app.lucidchart.com/publicSegments/view/26e846c2-f0c3-4723-8706-daa6e8ec2aeb/image.jpeg)

![view posts](https://app.lucidchart.com/publicSegments/view/f48b2fd4-16e5-4315-9031-6a63dac866d1/image.jpeg)

![homepage post](https://imgur.com/dlj0wgd.gif)

### edit post
```bash
As a user
So that I can correct my mistakes
I want to edit my posts
```
```bash
As a user
So that I can hide my thoughts
I want to delete my posts
```
![edit post](https://app.lucidchart.com/publicSegments/view/f0ffb18d-a37a-448e-b3a1-7a9806060b41/image.jpeg)

![edit post](https://imgur.com/D7FqrAG.gif)

### Like & comment
```bash
As a user
So that I can discuss my friends posts
I want to be able to comment on posts
```

```bash
As a user
So that I can correct spelling mistakes \in my comments
I want to edit my comments
```

```bash
As a user
So that I can take comments down
I want to delete my comments
```

```bash
As a user
So i can appreciate others posts
I want to be able to like posts
```

```bash
As a developer
To make the conversation smooth
I want the page to stay reload with the comments visible after they're posted 
```

```bash
As a user
So i can see how popular a post is
I want to see how many likes it has
```

```bash
As a developer
So that likes accurately portray popularity
Users should only be able to like a post once
```

```bash
As a user
So that the page isnt too busy
I want to have comments on a dropdown menu
```
![like comment](https://imgur.com/GaBIGeP.gif)

### View profile page & add friend
```bash
As a  user
So I can find my friends
I want to be able to click through to their profile
```

```bash
As a user
So that I keep up with my friends
I want to be able to add friends
```
![add friend](https://app.lucidchart.com/publicSegments/view/1c432959-3c9a-4449-9e19-628c715096b5/image.jpeg)
![add friend](https://imgur.com/cW2WTmu.gif)


### Post on user profile
```bash
As a user
So that I can talk to my friends
I want to be able to post on their walls 
```
![wall post](https://imgur.com/sBrKzEe.gif)

### Log out
```bash
As a user
So that I can stop using Acebook
I would like to be able to log out
```
![log out](https://imgur.com/uYtjhUD.gif)

### Konami code
```bash
As a developer
So I can provide easter eggs \for fellow developers
I want to implement the Konami code 
```

```bash
As a developer
So I can celebrate with my team
I want the easter egg to be associated with the team rex logo
```
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

### Resources
- [Controller testing in Rails](https://medium.com/table-xi/whats-up-with-rails-controller-tests-f0ece1fdd9f0)
- [Rails Toolbox](https://github.com/makersacademy/course/blob/master/engineering_projects/toolbox.md#what-should-we-test-in-a-rails-app)
- [Rails Docs - Testing Controllers](https://guides.rubyonrails.org/testing.html#functional-tests-for-your-controllers)
- [Adding likes](https://medium.com/full-taxx/how-to-add-likes-to-posts-in-rails-e81430101bc2)
- [Web development tools](https://github.com/makersacademy/course/blob/master/pills/web_development_tools.md)

## Team-Rex

Our wonderful team was made up of:

- [Courtenay Donald](https://github.com/c-donald)
- [Farhaan Ali](https://github.com/farhaan-ali)
- [Oliver Beney](https://github.com/obean)
- [Sam Colson](https://github.com/samcolson4)
- [Veronica Lee](https://github.com/veronicavlee89)
