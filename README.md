# Ingenico Connect Ruby SDK

## Introduction

The Ruby SDK helps you to communicate with the [Ingenico Connect](https://epayments.developer-ingenico.com/) Server API. Its primary features are:

* convenient Ruby library for the API calls and responses
    * marshalls Ruby request objects to HTTP requests
    * unmarshalls HTTP responses to Ruby response objects or Ruby exceptions
* handling of all the details concerning authentication
* handling of required meta data

Its use is demonstrated by an example for each possible call. The examples execute a call using the provided API keys. 

See the [Ingenico Connect Developer Hub](https://epayments.developer-ingenico.com/documentation/sdk/server/ruby/) for more information on how to use the SDK.

## Structure of this repository

This repository consists out of four main components:

1. The source code of the SDK itself: `/lib/ingenico/connect/sdk/`
2. The source code of the SDK unit tests: `/spec/lib/`
3. The source code of the SDK integration tests: `/spec/integration/`
4. Usage examples: `/examples/`

Note that the source code of the unit tests, integration tests and the examples can only be found on GitHub.

## Requirements

Ruby 2.2 or higher is required. Ruby 2.1.10 is also supported but is not suggested because official support has ended and security maintenance will end soon.
As for JRuby, version 9.0.0.0 and higher are supported.
In addition, the following package is required:

* [httpclient](https://github.com/nahi/httpclient) 2.8 or higher
* [concurrent-ruby](https://github.com/ruby-concurrency/concurrent-ruby) 1.0 or higher

## Installation

### Using RubyGems

To install the SDK using `gem`, execute the following command:

    gem install connect-sdk-ruby

### Using a pre-built gem

1. Download the latest version of the Ruby SDK from GitHub. Choose the `connect-sdk-ruby-x.y.z.gem` file from the [releases](https://github.com/Ingenico-ePayments/connect-sdk-ruby/releases) page, where `x.y.z` is the version number.
2. Navigate into the folder where the gem file is downloaded to, and execute the following command:

    ```
    gem install connect-sdk-ruby-x.y.z.gem
    ```
3. Feel free to delete the gem file at this point, it is no longer required.

### From source

1. Download the latest version of the Ruby SDK from GitHub. Choose the `connect-sdk-ruby-x.y.z.zip` file from the [releases](https://github.com/Ingenico-ePayments/connect-sdk-ruby/releases) page, where `x.y.z` is the version number.
2. Unzip the file, navigate into the folder where the file is unzipped to, and execute the following commands:

    ```
    gem build connect-sdk-ruby.gemspec
    gem install connect-sdk-ruby-x.y.z.gem
    ```
3. Feel free to delete the unzipped archive, the zip file and the gem file at this point, they are no longer required.

## Uninstalling

After the Ruby SDK has been installed, it can be uninstalled using the
following command:

    gem uninstall connect-sdk-ruby

The required packages can be uninstalled in the same way.

## Usage

After the Ruby SDK has been installed, it can be required in Ruby program as follows:

    require 'ingenico/connect/sdk'

## Running tests

There are two types of tests: unit tests and integration tests. The unit tests will work out-of-the-box; for the integration tests some configuration is required.
First, some environment variables need to be set:

* `connect.api.apiKeyId` for the API key id to use. This can be retrieved from the Configuration Center.
* `connect.api.secretApiKey` for the secret API key to use. This can be retrieved from the Configuration Center.
* `connect.api.merchantId` for your merchant ID.

In addition, to run the proxy integration tests, the proxy URI, username and password should be set in the `spec/fixtures/resources/properties.proxy.yml` file.

In order to run the unit and integration tests, some additional dependencies are required:

* [rake](https://ruby.github.io/rake/) 10.4 or higher
* [rspec](https://github.com/rspec/rspec) 3.5 or higher
* [webmock](https://github.com/bblimke/webmock) 2.1 or higher
* [sinatra](https://github.com/sinatra/sinatra) 1.4 or higher

They can be installed using the following command:

    gem install rake rspec webmock sinatra

*Note: if rake is already installed as part of the Ruby installation, this will cause a conflict error. This can safely be ignored.*

The following commands can now be executed from the root directory of the SDK folder (/) to execute the tests:

* Unit tests:

    ```
    rake unit
    ```

* Integration tests:

    ```
    rake integration
    ```

* Both unit and integration tests:

    ```
    rake spec
    ```

## Generating documentation

Documentation can be generated with YARD. YARD can be installed as a gem. The gems required to generate documentation are:

* [rake](https://ruby.github.io/rake/) 10.4 or higher
* [yard](https://github.com/lsegal/yard) 0.9.5 or higher

They can be installed using the following command:

    gem install rake yard

*Note: if rake is already installed as part of the Ruby installation, this will cause a conflict error. This can safely be ignored.*

Once YARD and rake are installed, documentation can be generated with the following command (ran from the root folder):

    rake yard

Documentation will be generated in the `/doc` folder. The file `/doc/index.html` is the main documentation file.
