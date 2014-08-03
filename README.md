# Activatable

Do you want to make your model activatable? No problem.

## How to use

To use hstorable you should add this line to your Gemfile:

```
gem 'activatable', '~> 0.0.2'
```

To use activatable you should create table like this:

```ruby
create_table :wrappers do |t|
  t.integer :company_id
  t.boolean :active, default: false
  t.timestamps
end
```

And now you can make your model activatable in some scope:

```ruby
class Api::Wrapper < ActiveRecord::Base
  include Activatable

  activatable :active, -> (wrapper) { where(company_id: wrapper.company_id) }
end
```

## License

Copyright (c) 2014 Sergey Tsvetkov

MIT License

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
