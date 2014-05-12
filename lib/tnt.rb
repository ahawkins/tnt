require "tnt/version"

module Tnt
  class << self
    def boom(super_class_or_message = StandardError)
      if super_class_or_message.is_a? Class
        Class.new super_class_or_message do
          define_method :initialize do |*args|
            if block_given?
              message = yield *args
              super message
            else
              super *args
            end
          end
        end
      else
        Class.new StandardError do
          define_method :initialize do |*args|
            super super_class_or_message
          end
        end
      end
    end
  end
end
