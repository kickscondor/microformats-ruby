module Microformats2
  module Property
    class DateTime < Foundation

      def value
        ::DateTime.parse(to_s)
      end

      def to_hash
        if items.empty?
          to_s
        else
          { value: to_s }.merge(items.first.to_hash)
        end
      end

      protected

      def attr_map
        @attr_map ||= {
          "time" => "datetime",
          "ins" => "datetime",
          "abbr" => "title",
          "data" => "value" }
      end
    end
  end
end
