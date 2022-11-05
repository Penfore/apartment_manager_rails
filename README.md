# Apartment Manager

## Requirements

* Ruby

* Rails

* NodeJs

You can follow the [RVM](https://rvm.io/) guide for installing Ruby along with Rails.
The Ruby version can be found in the file `.ruby-version` and practically any subversion of Rails 7 will work.

For installing NodeJS you can use [NVM](https://github.com/nvm-sh/nvm) or install directly from the [NodeJS website](https://nodejs.org/en/).

**WARNING**

Windows user might need to use [WSL](https://learn.microsoft.com/pt-br/windows/wsl/) since some Ruby gems used in Rails will not work on Windows.

## Running

Enter the app root folder. Ex. `./apartment_manager_rails`

Run the following commands on yout terminal.

For creating your local database:

`rails db:create`

For running the migration files:

`rails db:migrate`

Now you need to start the server:

`rails s`
