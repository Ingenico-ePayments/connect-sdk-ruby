begin
  require 'rspec/core/rake_task'

  RSpec::Core::RakeTask.new(:spec) do |t|  # supports automated testing using the command *rake* *spec*
    t.rspec_opts = '--color --format documentation'
  end

  RSpec::Core::RakeTask.new(:unit) do |t|  # supports automated testing using unit tests using the command *rake* *unit*
    t.rspec_opts = '--color --format documentation'
    t.exclude_pattern = 'spec/integration/**'
  end

  RSpec::Core::RakeTask.new(:integration) do |t|  # supports automated testing of integration using the command *rake* *integration*
    t.rspec_opts = '--color --format documentation'
    t.pattern = 'spec/integration/**_spec.rb'
  end

  task :default => :spec
rescue LoadError
  puts '[*] error -- development dependency is not installed'
end

begin
  require 'yard'

  YARD::Rake::YardocTask.new(:yard) do |t|  # supports generating documentation using the command *rake* *yard*
      # t.files   = ['lib/**/*.rb', OTHER_PATHS]   # optional
      t.options = ['--no-private']
  end

  task :doc => :yard  # alternative alias to generate documentation
rescue LoadError
  puts '[*] error -- development dependency is not installed'
end
