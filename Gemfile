#This file is generated by ModuleSync, do not edit.

source ENV['GEM_SOURCE'] || "https://rubygems.org"

def location_from_env(env, default_location = [])
	location = ENV[env]
  if location
    if location =~ /^((?:git|https?)[:@][^#]*)#(.*)/
      [{ :git => $1, :branch => $2, :require => false }]
    elsif location =~ /^file:\/\/(.*)/
      ['>= 0', { :path => File.expand_path($1), :require => false }]
    else
      [location, { :require => false }]
    end
  else
    default_location
  end
end

group :development, :unit_tests do
  gem 'ansi'
	gem 'backports'
	gem 'metadata-json-lint'
  gem 'puppet_facts'
	gem "specinfra", '2.64.0' # , '< 3.2.0'
	gem "hirb"
	gem "travis"
	gem "travis-lint"
	gem "puppet-blacksmith"
	gem "guard-rake"
  gem 'puppetlabs_spec_helper', '>= 1.2.1'
  gem 'rspec-puppet', '>= 2.3.2'
  gem 'rspec-puppet-facts'
  gem 'mocha'
  gem 'simplecov'
  gem 'parallel_tests', '< 2.10.0' if RUBY_VERSION < '2.0.0'
  gem 'parallel_tests' if RUBY_VERSION >= '2.0.0'
  gem 'rubocop', '0.41.2' if RUBY_VERSION < '2.0.0'
  gem 'rubocop' if RUBY_VERSION >= '2.0.0'
  gem 'rubocop-rspec', '~> 1.6' if RUBY_VERSION >= '2.3.0'
  gem 'json_pure', '<= 2.0.1' if RUBY_VERSION < '2.0.0'

	gem "puppet-lint-absolute_classname-check"
	gem "puppet-lint-leading_zero-check"
	gem "puppet-lint-trailing_comma-check"
	gem "puppet-lint-version_comparison-check"
	gem "puppet-lint-classes_and_types_beginning_with_digits-check"
	gem "puppet-lint-unquoted_string-check"
end

group :system_tests do
  gem 'beaker', *location_from_env('BEAKER_VERSION', []) if RUBY_VERSION >= '2.3.0'
  gem 'beaker', *location_from_env('BEAKER_VERSION', ['< 3']) if RUBY_VERSION < '2.3.0'
  gem 'beaker-pe' if RUBY_VERSION >= '2.3.0'
  gem 'beaker-rspec', *location_from_env('BEAKER_RSPEC_VERSION', ['>= 3.4'])
  gem 'serverspec'
  gem 'beaker-puppet_install_helper'
  gem 'master_manipulator'
  gem 'beaker-hostgenerator', *location_from_env('BEAKER_HOSTGENERATOR_VERSION', [])
end

gem 'facter', *location_from_env('FACTER_GEM_VERSION')
gem 'puppet', *location_from_env('PUPPET_GEM_VERSION')

if File.exists? "#{__FILE__}.local"
  eval(File.read("#{__FILE__}.local"), binding)
end
