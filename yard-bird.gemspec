--- !ruby/object:Gem::Specification 
name: yard-bird
version: !ruby/object:Gem::Version 
  hash: 25
  prerelease: 
  segments: 
  - 0
  - 1
  - 1
  version: 0.1.1
platform: ruby
authors: 
- Thomas Sawyer
autorequire: 
bindir: bin
cert_chain: []

date: 2011-06-10 00:00:00 Z
dependencies: 
- !ruby/object:Gem::Dependency 
  name: yard
  prerelease: false
  requirement: &id001 !ruby/object:Gem::Requirement 
    none: false
    requirements: 
    - - ">="
      - !ruby/object:Gem::Version 
        hash: 3
        segments: 
        - 0
        version: "0"
  type: :runtime
  version_requirements: *id001
- !ruby/object:Gem::Dependency 
  name: pitstop
  prerelease: false
  requirement: &id002 !ruby/object:Gem::Requirement 
    none: false
    requirements: 
    - - ">="
      - !ruby/object:Gem::Version 
        hash: 3
        segments: 
        - 0
        version: "0"
  type: :development
  version_requirements: *id002
- !ruby/object:Gem::Dependency 
  name: qed
  prerelease: false
  requirement: &id003 !ruby/object:Gem::Requirement 
    none: false
    requirements: 
    - - ">="
      - !ruby/object:Gem::Version 
        hash: 3
        segments: 
        - 0
        version: "0"
  type: :development
  version_requirements: *id003
description: Yardbird is a YARD plugin that allows you, the developer, to customize your documentation parsing system.
email: transfire@gmail.com
executables: []

extensions: []

extra_rdoc_files: 
- README.rdoc
files: 
- lib/yard-bird/rules.rb
- lib/yard-bird/version.rb
- lib/yard-bird.rb
- HISTORY.rdoc
- README.rdoc
- NOTICE.rdoc
homepage: http://rubyworks.github.com/yard-bird
licenses: 
- Apache 2.0
post_install_message: 
rdoc_options: 
- --title
- YARD Bird API
- --main
- README.rdoc
require_paths: 
- lib
required_ruby_version: !ruby/object:Gem::Requirement 
  none: false
  requirements: 
  - - ">="
    - !ruby/object:Gem::Version 
      hash: 3
      segments: 
      - 0
      version: "0"
required_rubygems_version: !ruby/object:Gem::Requirement 
  none: false
  requirements: 
  - - ">="
    - !ruby/object:Gem::Version 
      hash: 3
      segments: 
      - 0
      version: "0"
requirements: []

rubyforge_project: yard-bird
rubygems_version: 1.8.2
signing_key: 
specification_version: 3
summary: Write documentation your way.
test_files: []

