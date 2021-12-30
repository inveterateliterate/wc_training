# WC Training

Interactive web app of the training workout used by the Israeli Women's National Team for the 2013 World Cup

## Getting Started
### Prerequisites
+ Ruby 3.0.3
+ Rails 7.0.0
+ Postgres

### Setting Up
+ `git clone git@github.com:inveterateliterate/wc_training.git`
+ `cd wc_training`
+ `bundle install`
+ `bundle exec rake db:create`

Please review the [ERD](https://dbdiagram.io/d/60d0a9ed0c1ff875fcd5ca66) for a visual reprensentation of the schema.
Additionally, a png of the ERD is regenerated with each `db:migrate` to erd.png
Lastly, db documentation can be pushed up to dbdocs with `dbdocs build wc_training_db.dbml` and viewed at https://dbdocs.io/iribon9/WCTraining

## Running in Development

### Loading Environment
+ `bundle install`
+ `bundle exec rake db:migrate db:seed`
+ `rails server`
+ `open localhost:3000`
<!-- + running workers:
  + `redis-server`
  + `bundle exec sidekiq` -->

### Committing
Pull requests to the `dev` branch will trigger review apps in Heroku.
The `staging` branch will auto-deploy to the *staging* environment on Heroku.
The `main` branch can then be auto-deployed to *production* after successful QA.

### Testing
All Ruby/Rails unit tests must pass for a PR to be merged. They can be run locally with `bundle exec rspec`
This repo also runs [SimpleCov](https://github.com/simplecov-ruby/simplecov) to report on test coverage. To view the test coverage run `open coverage/index.html`

### Linting
The project is set up to lint ruby so it's advised you have this integrated in your editor.
A precommit hook has been added to run the linter when commiting.

You can run linting manually with:
+ Ruby: `bundle exec rubocop` (if installed globally with `gem install rubocop`)
