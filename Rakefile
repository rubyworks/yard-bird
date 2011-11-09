#!/usr/bin/env ruby

require 'rake/testtask'

Rake::TestTask.new do |t|
  t.test_files = FileList['test/*/test*.rb']
  t.verbose = true
end

desc "run tests via turn"
task :turn do
  sh "turn -Ilib test/"
end

desc "run tests via minitap"
task :tapout do
  sh "ruby -rminitap -Ilib test/*/test*.rb | tapout"
end

task :default => [:test]

