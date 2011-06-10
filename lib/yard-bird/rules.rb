module YARD

  module Bird

    #
    class Rules

      # Returns [Rules] 
      def self.load
        new
      end

      # Create new Rules object.
      def initialize()
        @patterns = {}
        load_rules
        inject_rules
      end

      # Dot-bird filesa are loaded from `.yard/` project directory
      # and sorted alphabetically. The sorting is useful for controlling
      # application order when using multiple files --simply number the
      # files, e.g.
      #
      #   .yard/01_special.bird
      #   .yard/02_tomdoc.bird
      #
      # In the example the special rules will have precedence over the 
      # tomdoc rules.
      #
      # Returns nothing.
      def load_rules
        files = Dir[".yard/*.bird"].sort
        files.each do |file|
          instance_eval(File.read(file), file)
        end
      end

      # Define a new rule.
      #
      #   pattern - Regexp to match against comment.
      #   block   - Proc for handling pattern match.
      #
      # Returns [Proc] the given block.
      def When(pattern, &block)
        patterns[pattern] = block
      end

      # Returns [Hash] patterns mapped to corresponding procedures.
      def patterns
        @patterns
      end

      # Rules are applied as YARD processes comments. All rules are applied
      # in order until all rules have been tried, or a triggered rule returns
      # a `:break` symbol, which will short-circuit further rule application.
      def inject_rules
        pats = patterns
        ::YARD::Docstring.class_eval do
          define_method :parse_comments do |comments|
            comments = comments.join("\n") if Array === comments
            result   = nil
            pats.each do |pattern, block|
              if md = pattern.match(comments)
                result = instance_exec(md, comments, &block) #block.call(md)
                break if result == :break
                comments = result if String === result
              end
            end
            comments.to_s #r.to_s
          end
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

