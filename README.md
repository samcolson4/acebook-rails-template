# AceBook

REQUIRED INSTRUCTIONS:

1. Fork this repository to `acebook-teamname` and customize
the below**

[You can find the engineering project outline here.](https://github.com/makersacademy/course/tree/master/engineering_projects/rails)

2. The card wall is here: <please update>

## How to contribute to this project
See [CONTRIBUTING.md](CONTRIBUTING.md)

## Quickstart

First, clone this repository. Then:

```bash
> bundle install
> bin/rails db:create
> bin/rails db:migrate

> bundle exec rspec # Run the tests to ensure it works
> bin/rails server # Start the server at localhost:3000

> Run rails_best_practices in root folder of app: rails_best_practices . -c config/rails_best_practices.yml  
```
##########################################

specfication: where we post the requirements from trello, also add gifts for each bit 

First plan 
- create pairs and retro facilitators 
- Generate pairs and sprint planning assignments
- Investigate Rails (Spike), scaffolding of rails e.g setting up the classes etc. useful information https://guides.rubyonrails.org/getting_started.html

Resources Material 
- Medium article:
https://medium.com/table-xi/whats-up-with-rails-controller-tests-f0ece1fdd9f0
- Rails Toolbox: https://github.com/makersacademy/course/blob/master/engineering_projects/toolbox.md#what-should-we-test-in-a-rails-app
- Rails Docs - Testing Controllers:
https://guides.rubyonrails.org/testing.html#functional-tests-for-your-controllers

Requiring CI/CD
- TRAVIS CI https://travis-ci.org/ 
- Researched different CI/CD to choose the most suitable one for the project 
- CI/CD was to insure that a deployment pipeline was built, to run test, code coverage and only to deploy to the app, if all test was passed on github
- Also for extra development testing features RUBOCOP, SIMPLECOV

User Sign Up
- Use rails scaffolding to set up Users; store user auth details  
- Created a basic webform; Name, Email and Password
- Post request to store user info 

```bash
## Sign up 
![Sign up](https://i.imgur.com/rM9y0g7.gif)
```bash
As a User 
so that I can got on Acebook 
I need to sign up to make Acebook App
```

```bash
As a developer 
To make Acebook look professional 
I would like to collect the User's name, email and password 
```
```bash
As a developer 
For security, when signing up 
I want Acebook users to sign up with valid a email addresses 
```
```bash
As a developer 
For security, when signing up
I want Acebook users to sign up with 6-10 character password
```
```bash
As a developer 
For security, when sigining up  
A user must input name, email and password to view the home page
```
## Log in
![Login](https://imgur.com/0SrD34w.gif)
```bash
As a User 
Once I have sign up to Acebook 
I can login in at any time 
```
```bash
As a developer 
For security, when logging in 
Acebook users will have to use correct email and password
```

## Log out
![log out](https://imgur.com/uYtjhUD.gif)
```bash
As a User
Once I am finished using the Acebook App 
I would need to log out from the Acebook account 
```





