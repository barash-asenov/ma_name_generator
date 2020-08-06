module MaNameGenerator
  class Base
    MA_NAMES = File.read("#{File.expand_path(__dir__)}/data/names", mode: 'r:UTF-8').split("\n")

    class << self
      def generate
        MA_NAMES.sample
      end

      def generate_unique(excluding: [])
        raise NotArray unless excluding.is_a?(Array)

        excluded_items(excluding).sample
      end

      private

      def excluded_items(items)
        MA_NAMES - items
      end
    end
  end
end
