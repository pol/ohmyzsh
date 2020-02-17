# Bundler

- adds completion for basic bundler commands
- adds short aliases for common bundler commands
<<<<<<< HEAD
  - `be` aliased to `bundle exec`
=======
  - `be` aliased to `bundle exec`.
    It also supports aliases (if `rs` is `rails server`, `be rs` will bundle-exec `rails server`).
>>>>>>> origin/master
  - `bl` aliased to `bundle list`
  - `bp` aliased to `bundle package`
  - `bo` aliased to `bundle open`
  - `bout` aliased to `bundle outdated`
  - `bu` aliased to `bundle update`
  - `bi` aliased to `bundle install --jobs=<cpu core count>` (only for bundler `>= 1.4.0`)
- adds a wrapper for common gems:
  - looks for a binstub under `./bin/` and executes it (if present)
  - calls `bundle exec <gem executable>` otherwise

<<<<<<< HEAD
For a full list of *common gems* being wrapped by default please look at the `bundler.plugin.zsh` file.
=======
Common gems wrapped by default (by name of the executable):
`annotate`, `cap`, `capify`, `cucumber`, `foodcritic`, `guard`, `hanami`, `irb`, `jekyll`, `kitchen`, `knife`, `middleman`, `nanoc`, `pry`, `puma`, `rackup`, `rainbows`, `rake`, `rspec`, `rubocop`, `shotgun`, `sidekiq`, `spec`, `spork`, `spring`, `strainer`, `tailor`, `taps`, `thin`, `thor`, `unicorn` and `unicorn_rails`.
>>>>>>> origin/master

## Configuration

Please use the exact name of the executable and not the gem name.

### Add additional gems to be wrapped

Add this before the plugin-list in your `.zshrc`:
```sh
BUNDLED_COMMANDS=(rubocop)
plugins=(... bundler ...)
```
This will add the wrapper for the `rubocop` gem (i.e. the executable).


### Exclude gems from being wrapped

Add this before the plugin-list in your `.zshrc`:
```sh
UNBUNDLED_COMMANDS=(foreman spin)
plugins=(... bundler ...)
```
This will exclude the `foreman` and `spin` gems (i.e. their executable) from being wrapped.

## Excluded gems

These gems should not be called with `bundle exec`. Please see [issue #2923](https://github.com/ohmyzsh/ohmyzsh/pull/2923) on GitHub for clarification.

`berks`
`foreman`
`mailcatcher`
`rails`
`ruby`
`spin`
