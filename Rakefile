require "bundler/gem_tasks"
begin
  require "rspec/core/rake_task"

  desc "Run the specs"
  RSpec::Core::RakeTask.new(:spec) do |t|
    t.rspec_opts = %w[--color]
    t.pattern = 'spec/*_spec.rb'
  end
rescue LoadError
end

task :default => :spec
