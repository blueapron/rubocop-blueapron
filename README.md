# RuboCop Blue Apron

Blue Apron Style Guide RuboCop extension.

## Installation

Add `rubocop-blueapron` to your `Gemfile`

```
gem 'rubocop-blueapron'
```

## Usage

Configure RuboCop to load the extension in `.rubocop.yml`.

```
require: rubocop-blueapron
```

## Contributing

1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request :D

For running the spec files, this project depends on RuboCop's spec helpers.
This means that in order to run the specs locally, you need a (shallow) clone
of the RuboCop repository:

```bash
git clone --depth 1 git://github.com/bbatsov/rubocop.git vendor/rubocop
```

## Credits

Based on [rubocop-rspec](https://github.com/nevir/rubocop-rspec).

## License

`rubocop-blueapron` is MIT licensed. [See the accompanying file](MIT-LICENSE.md) for
the full text.
