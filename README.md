# Activatable

Do you want to make your model activatable? No problem.

## How to use

```ruby
class Api::SomeServiceApiWrapper < ActiveRecord::Base
    include Activatable

    activatable :active, -> (wrapper) { where(company_id: wrapper.company_id) }
end
```

## Installation

Add this line to your application's Gemfile:

    gem 'activatable'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install activatable

## Contributing

1. Fork it ( http://github.com/<my-github-username>/activatable/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
