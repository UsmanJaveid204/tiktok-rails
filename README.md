# Tiktok Rails for OmniAuth.

Supports OAuth 2.0 server-side flow with Tiktok API. 
Read the Tiktok docs for more details: https://developers.tiktok.com/doc/login-kit-web

### Tiktok access_token valid only for 24 hours!

## Installing

Add to your `Gemfile`:

```ruby
gem 'tiktok-rails'
```

Then `bundle install`.

## Usage

`OmniAuth::Strategies::Tiktok` is simply a Rack middleware. Read the OmniAuth docs for detailed instructions: https://github.com/omniauth/omniauth.

Here's a quick example, adding the middleware to a Rails app in `config/initializers/omniauth.rb`:

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :tiktok, ENV['TIKTOK_CLIENT_ID'], ENV['TIKTOK_CLIENT_SECRET']
end
```

### Custom Callback URL/Path

You can set a custom `callback_url` or `callback_path` option to override the default value.

## Auth Hash

Here's an example Auth Hash available in `request.env['omniauth.auth']`:

```
{
  provider: 'tiktok',
  uid: '1234567',
  info: {
    display_name: 'ABCDEF'
  },
  credentials: {
    token: 'ABCDEF...', # OAuth 2.0 access_token, which you may wish to store
    expires_at: 1321747205, # when the access token expires (it always will)
    expires: true, # this will always be true
    refresh_token: 'ABCDEF', # it will be valid for 365 days
    refresh_token_expires_at: 1111111 # timestamp
  }
}
```

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
