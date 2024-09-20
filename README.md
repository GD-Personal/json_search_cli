[![Github Actions](https://github.com/GD-Personal/flexi-json/actions/workflows/main.yml/badge.svg)](https://github.com/GD-Personal/flexi-json/actions/workflows/main.yml) [![Maintainability](https://api.codeclimate.com/v1/badges/bd14f8a5a0c7575d2ac2/maintainability)](https://codeclimate.com/github/GD-Personal/flexi-json/maintainability) [![Test Coverage](https://api.codeclimate.com/v1/badges/bd14f8a5a0c7575d2ac2/test_coverage)](https://codeclimate.com/github/GD-Personal/flexi-json/test_coverage)

# flexi-json

`Flexi::Json` is a versatile Ruby gem designed for manipulating JSON data. With functionalities for searching, generating new JSON, and transforming existing structures.

## Installation

You can install the gem using RubyGems:
```
gem install flexi-json
```

or add it to your Gemfile
```
gem 'flexi-json'
```

and then run:
```
bundle install
```

## Usage
```ruby
require 'flexi-json'

# File path to the JSON data
Flexi::Json::Run.new("some/path/to/file.json").search("john")

# Or filter it by your chosen key e.g first_name
Flexi::Json::Run.new("some/path/to/file.json").search("john", "first_name")
Flexi::Json::Run.new("some/path/to/file.json").search("john", "first_name,email")

# Find duplicate emails
Flexi::Json::Run.new("some/path/to/file.json").find_duplicates("email")
Flexi::Json::Run.new("some/path/to/file.json").find_duplicates("email,full_name")
```

## TODOS
- Improve search filter by specifying fields to filter from
- Improve the find_duplicate function by adding ability to find duplciates based on a selected field
- Add support for accepting a dataset url rather than just a local file path
- Add support for accepting raw json data
- Add CRUD support to the dataset
- Optimise the search function by implimenting indeces
- Optimise the loader by chunking the data

## Contributing
Contributions are welcome! If you have suggestions for improvements or new features, feel free to fork the repository and create a pull request. Please ensure your code adheres to the project's coding standards and includes tests for new features.

Bug reports and pull requests are welcome on GitHub at https://github.com/GD-Personal/flexi-json. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/GD-Personal/flexi-json/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
