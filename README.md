![Build Status](https://api.travis-ci.com/samcolson4/acebook-team-rex.svg?branch=master) 
# AceBook


## Quickstart
#Databases
```bash
$ brew install postgresql
$ brew services start postgresql
$ psql postgres
```

First, clone this repository. Then:

```bash
$ bundle install
$ bin/rails db:create
$ bin/rails db:migrate

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

## User Stories

```bash
As a user
So that i can use Acebook
I would like to sign up
```

![Sign up](https://i.imgur.com/rM9y0g7.gif)
```bash
As a user
So that I can stop using Acebook
I would like to be able to sign out
```
![log out](https://imgur.com/uYtjhUD.gif)
```bash
As a user
So I can use Acebook again
I would like to be able to login
```
![Login](https://imgur.com/0SrD34w.gif)
```bash
As a developer
To increase security
I want acebook users to sign up with valid email addresses 
```
```bash
As a developer
to increase security
I want users to have passwords between 6-10 characters
```
## post on homepage
![homepage post](https://imgur.com/dlj0wgd.gif)
```bash
As a user
So that I can communicate my thoughts
I want to make a post
```

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

```bash
As a user
So I can style my posts
I want to linebreaks to appear where I put them in my posts

```
## Profile page click through & add friend
![add friend](https://imgur.com/cW2WTmu.gif)


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

## Post on user profile
![wall post](https://imgur.com/sBrKzEe.gif)


```bash
As a user
So that I can talk to my friends
I want to be able to post on their walls 
```

## Like & comment
![like comment](https://imgur.com/GaBIGeP.gif)
```bash
As a user
So that I can discuss my friends posts
I want to be able to comment on posts
```

```bash
As a user
So that I can correct spelling mistakes in my comments
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
## Konami code
![konami code](https://imgur.com/8N8Tz7R.gif)
```bash
As a developer
So I can provide easter eggs for fellow developers
I want to implement a Konami code 
```

```bash
As a developer
So I can Celebrate with my team
I want the easter egg to be associated with the team rex logo
```





