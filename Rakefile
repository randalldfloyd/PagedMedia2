# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

Rails.application.load_tasks

require 'rspec/core'
require 'rspec/core/rake_task'
require 'rubocop/rake_task'
require 'solr_wrapper/rake_task'
require 'fcrepo_wrapper/rake_task'

RuboCop::RakeTask.new

task('spec').clear
desc 'Run Paged Media specs'
task spec: 'paged_media:spec'

desc 'Run Paged Media CI tests'
task ci: 'spec'

task default: 'ci'