# Kebapage

## Requirements

Before mounting Kebapage to your application, you will need:

* Ruby ~> 2.0
* Rails ~> 4.0
* Cybele ~> 1.0.0

## Installing Kebapage to Cybele Rails applications

Add the engine to your Gemfile:

```ruby
gem 'kebapage'
```

Bundle install:

```
bundle install
```

Make the installation:

```
rails g kebapage:install
```

Run migrations:

```
rake db:migrate
```

Mount the engine under HQ namespace and add extra routes in config/routes.rb file:

```ruby
namespace :hq do
  mount Kebapage::Engine => '/mount_point' # Example: '/spm'
end

get '/:id', to: 'kebapage/static_pages#show', as: 'pages'
```

Add blog icon-link to Cybele Rails application's **app/views/layouts/hq/partials/_dock.haml** file. For an example, checkout **example.haml** file.

## Bugs and Feedback

If you discover any bugs or want to drop a line, feel free to create an issue on Github

http://github.com/kebab-project/kebapage

## Contributing

Once you've made your great commits:

1. Fork Template
2. Create a topic branch - `git checkout -b my_branch`
3. Push to your branch - `git push origin my_branch`
4. Create a Pull Request from your branch
5. That's it!

## Credits

- Kebapage is maintained and funded by [lab2023 - information technologies](http://lab2023.com/)
- The names and logos for lab2023 are trademarks of lab2023, inc.

## License

Copyright 2014 lab2023 – information technologies
