require 'rspec/core'
require 'rspec/core/rake_task'
require 'jettywrapper'
JETTY_ZIP_BASENAME = 'master'
Jettywrapper.url = "https://github.com/projecthydra/hydra-jetty/archive/#{JETTY_ZIP_BASENAME}.zip"

desc 'Run specs on travis'
task :ci do
  ENV['RAILS_ENV'] = 'test'
  ENV['TRAVIS'] = '1'
  jetty_params = Jettywrapper.load_config
  error = Jettywrapper.wrap(jetty_params) do
    Rake::Task['spec'].invoke
  end
  raise "test failures: #{error}" if error
end
