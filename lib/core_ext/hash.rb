module SimplyUseful
  module CoreExtensions
    module Keys

      # How it's done in active support
      # File lib/active_support/core_ext/hash/keys.rb, line 22
      #22:         def symbolize_keys
      #23:           inject({}) do |options, (key, value)|
      #24:             options[(key.to_sym rescue key) || key] = value
      #25:             options
      #26:           end
      #27:         end

      # Another article mentioning that method
      # http://www.any-where.de/blog/ruby-hash-convert-string-keys-to-symbols/

      def deep_symbolize_keys
        _deep_symbolize_keys(self)
      end

      def deep_symbolize_keys!
        self.replace(self.deep_symbolize_keys)
      end

      private

      def _deep_symbolize_keys(value)
        if value.is_a? Hash
          hash = value.inject({}) do |memo,(k,v)|
            memo[(k.to_sym rescue k)|| k] = _deep_symbolize_keys(v)
            memo
          end
          return hash
        elsif value.is_a? Array
          value.map do |e|
            _deep_symbolize_keys(e)
          end
        else
          value
        end
      end

    end
  end
end

class Hash
  include SimplyUseful::CoreExtensions::Keys
end