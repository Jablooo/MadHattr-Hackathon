# HACKATHON
Create a webapp in a day using Ruby on Rails and deploying it.

- Programmes used: Trello, GitHub, RubyonRails, http://dbdesigner.net, mockplus, Heroku
- Gems used: bootstrap, stripe, shrine, shrine-cloudinary, devise

Heroku - https://mad-hattr.herokuapp.com

## PROBLEM
Creating a two-sided market place for all your hat buying/selling needs.

## DESIGN PROCESS
Started on Trello with User stories, followed by what steps/tasks will be needed
to get the project to deployed by 5pm Friday. Prioritised ERD and wireframes first.
We decided to design for mobile first.

### User Stories
[Link to Trello User Stories](https://trello.com/b/4HTI6TT0)
![User Stories](/docs/img/User_Stories.png)
###### trello

### ERD
![ERD](/docs/img/ERD.png)
###### dbdesigner.net

### Wireframes
![Wireframes](/docs/img/Wireframes.png)
###### mockplus

## Features implemented
- Authentication (Devise)
- File uploads (Shrine and Cloudinary)
- Payments (Stripe)
- Search function
- Testing (Rubocop)

## Git Branches
![Git Flow](/docs/img/Git_Branches.png)

## ISSUES ENCOUNTERED
- Passing variables from one 'environment' to another
- Price limit crashes application
- Deployment issues related to postgres
- No seed database
