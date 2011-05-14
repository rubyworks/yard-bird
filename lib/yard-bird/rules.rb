module YardBird

  #
  class Rules

    #
    def initialize()
      @patterns = {}
      load_rules
      inject_rules
    end

    #
    def load_rules
      files = Dir[".yard/*.bird"]
      files.each do |file|
        instance_eval(File.read(file), file)
      end
    end

    #
    def When(pattern, &block)
      patterns[pattern] = block
    end

    #
    def patterns
      @patterns
    end

    #
    def inject_rules
      pats = patterns
      ::YARD::Docstring.class_eval do
        define_method :parse_comments do |comments|
          result = nil
          pats.each do |pattern, block|
            comments = comments.join("\n") if Array === comments
            if md = pattern.match(comments)
              r = instance_exec(md, comments, &block) #block.call(md)
            end
          end
          comments.to_s #r.to_s
        end
      end
    end

  end

end

=begin
module YARD
  class Docstring
    def parse_comments(comments)
      Rules.patterns.each do |pattern, block|
        if md = patterns.match(comments)
          instance_exec(md, &block) #block.call(md)
        end
      end
    end
  end
end
=end

