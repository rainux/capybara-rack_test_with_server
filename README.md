# Capybara::RackTestWithServer

RackTest driver for Capybara, with a Rack server started. So you can access the internal API of your application in your tests, with a script which live outside of Rails application, while keep the tests run as fast as lighting with the RackTest driver.

## Installation

Add this line to your application's Gemfile:

    gem 'capybara-rack_test_with_server'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install capybara-rack_test_with_server

## Usage

For example you want use this driver for all features tagged as `@access_internal_api`, create a `features/support/hooks.rb` file in the root directory of your application, paste the following code to it.

```ruby
Before('@access_inner_api') do
  Capybara.current_driver = :rack_test_with_server

  File.open(Rails.root.join('tmp/rack_server_urls.json'), 'w') do |f|
    urls = {
      internal_api_path: page.driver.rack_server.url(internal_api_path)
    }
    f.puts urls.to_json
  end
end
```

Now you can access your internal API with the url written to `rack_server_urls.json`, in any scripts live outside of Rails application.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
