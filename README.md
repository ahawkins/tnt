# Tnt

[![Build Status](https://travis-ci.org/ahawkins/tnt.svg)](https://travis-ci.org/ahawkins/tnt)

A libary for programmers who like things that go boom. I found myself
creating a lot of error classes. I usually wanted to customize the
message or simply the superclass. It was tiring. Enter Tnt. Tnt is
micro library for writing useable and informative error messages.

## Installation

Add this line to your application's Gemfile:

    gem 'tnt'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install tnt

## Usage

```ruby
require 'tnt'

# Customize the message
ConstraintError = Tnt.boom "Domain constraints invalidated"
fail ConstraintError #=> ConstraintError: Domain constraints invalidated

# Pass arguments
ConstraintError = Tnt.boom do |subject, rule|
  "#{subject} violated #{rule}!"
end
fail ConstraintError.new(:person, :age) #=> ConstraintError: :person violated age!

# Pass a superclass
PartialError = Tnt.boom NotImplementedError do |object, method|
  "#{object} does not respond to #{method}"
end

# If you just need a new class
SampleError = Tnt.boom StandardError

# For the really lazy
SampleError = Tnt.boom
```

That's all there is too it. I use the first two forms most of the
time. The final form is handy for the lazy programmers. I prefer it.

## Contributing

1. Fork it ( https://github.com/[my-github-username]/tnt/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
