# MuleClip

is Clipboard Agent.

    $ mule_clip path/to/clip_path
    $ echo 'foo' | pbcopy
    push paste key
    $ foo

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'mule_clip'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mule_clip

## Usage

    $ mule_clip path/to/clip_path
    
    or
    
    $ CLIPBOARD_BIND_FILE=path/to/clip_path mule_clip
    
    and

    $ echo 'alias pbcopy="> ~/path/to/clip_path"'
    
## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/mule.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
