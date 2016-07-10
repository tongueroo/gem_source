# GemSource

Provides an opinionated way to quickly switch bundler between using gems locally on your filesystem or github.  The settings are configured through ~/.gem_source.yml config file. 

## Installation

You'll need to install the gem outside of bundler.

```
gem install gem_source
```

## Usage

Add this line to your the top of your Gemfile:

```ruby
require 'gem_source'
```

### Example 1 - use gems on local filesystem

If you want bundler to load gems on your local system at ~/src.

`~/.gem_source.yml`:

```yaml
where: local
path: ~/src
```

Example `Gemfile`

```ruby
require "gem_source"
source 'https://rubygems.org'

gem 'lono', GemSource.gem('tongueroo/lono')
```

Bundler will use the lono gem at `~/src/tongueroo/lono`.

### Example 2 - use gems on github

If you want bundler to load from github

`~/.gem_source.yml`:

```yaml
where: github
path: ~/src # gets ignored
```

Example `Gemfile`

```
require "gem_source"
source 'https://rubygems.org'

gem 'lono', GemSource.gem('tongueroo/lono')
```

### Example 3 - use gems on rubygems

If you want bundler to load from github

`~/.gem_source.yml`:

```yaml
where: rubygems
path: ~/src # gets ignored
```

Example `Gemfile`

```
require "gem_source"
source 'https://rubygems.org'

gem 'lono', GemSource.gem('tongueroo/lono')
```

Bundler will use the lono gem at [https://github.com/tongueroo/lono](https://github.com/tongueroo/lono).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/tongueroo/gem_source.

