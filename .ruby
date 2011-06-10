--- 
spec_version: 1.0.0
replaces: []

loadpath: 
- lib
name: yard-bird
repositories: 
  public: git://github.com/rubyworks/yard-bird.git
conflicts: []

engine_check: []

title: YARD Bird
contact: trans <transfire@gmail.com>
resources: 
  code: http://github.com/rubyworks/yard-bird
  mail: http://groups.google.com/group/rubyworks-mailinglist
  docs: http://wiki.github.com/rubyworks/yard-bird/qed
  bugs: http://github.com/rubyworks/yard-bird/issues
  wiki: http://wiki.github.com/rubyworks/yard-bird
  home: http://rubyworks.github.com/yard-bird
maintainers: []

requires: 
- group: []

  name: yard
  version: 0+
- group: 
  - build
  name: pitstop
  version: 0+
- group: 
  - test
  name: qed
  version: 0+
manifest: Manifest.txt
version: 0.1.1
licenses: 
- Apache 2.0
copyright: Copyright (c) 2011 Thomas Sawyer
authors: 
- Thomas Sawyer
organization: Rubyworks
description: Yardbird is a YARD plugin that allows you, the developer, to customize your documentation parsing system.
summary: Write documentation your way.
created: 2011-05-14
