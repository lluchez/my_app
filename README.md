# MyApp
Short description and motivation.

## Steps used to create this engine

```bash
rails plugin new my_app --dummy-path=spec/dummy --skip-test-unit --mountable
rails g resource Template name active
rails g rspec:install
```

## Usage
How to use my plugin.

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'my_app', :git => 'git@github.com:lluchez/my_app.git'
```

And then execute:
```bash
$ bundle
rake my_app:install
# rake my_app:install:migrate # shouldn't be needed anymore
rake db:migrate
```

Update your `routes.rb` file:
```ruby
mount MyApp::Engine => '/my_app'
```
