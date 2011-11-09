module YARD
  module Bird
    #
    def self.dotruby
      @dotruby ||= (
        require 'yaml'
        file = File.dirname(__FILE__)+'/../../.ruby'
        File.exist?(file) ? YAML.load_file(file) : {}
      )
    end
    #
    def self.const_missing(name)
      dotruby[name.to_s.downcase] || super(name)
    end
  end
end

