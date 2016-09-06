[![Coverage Status](https://coveralls.io/repos/github/sul-dlss/eloader-pkg-admin/badge.svg?branch=master)](https://coveralls.io/github/sul-dlss/eloader-pkg-admin?branch=master) | [![Build Status](https://travis-ci.org/sul-dlss/eloader-pkg-admin.svg?branch=master)](https://travis-ci.org/sul-dlss/eloader-pkg-admin)

# eloader-pkg-admin

This is a Rails application to be a front-end for administrating the various Eloader packages that are loaded to Symphony. Also can set 856s to not load based on URL strings they include.

## Requirements
1. Ruby (2.3.1)
2. Rails (4.2.0 or greater)

## Installation

Clone the repository
```
git clone https://github.com/sul-dlss/eloader-pkg-admin.git
```

Change directories into the app and install dependencies
```
bundle install
```

Migrate and seed the database
```
rake db:migrate
rake db:seed
```

Start the development server as a specific user authorized to use the app
```
REMOTE_USER=guest rails s
```

## Testing

The test suite (with RuboCop style enforcement) will be run with the default rake task (also run on travis)

    $ rake

The specs can be run without RuboCop enforcement

    $ rake spec

The RuboCop style enforcement can be run without running the tests

    $ rake rubocop
