require "bundler/gem_tasks"
require "rspec/core/rake_task"

desc "Run the specs"
RSpec::Core::RakeTask.new(:spec) do |t|
  t.rspec_opts = %w[--color]
end

task :default => :spec
