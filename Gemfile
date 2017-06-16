source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem "activerecord", '~> 5.1.1'
gem "actionpack", '~> 5.1.1'
gem "actionview", '~> 5.1.1'
gem "actionmailer", '~> 5.1.1'
gem "activejob", '~> 5.1.1'
gem "activesupport", '~> 5.1.1'
gem "railties", '~> 5.1.1'
gem "sprockets-rails", ">= 2.0.0"

# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use Puma as the app server
gem 'puma', '~> 3.7'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
