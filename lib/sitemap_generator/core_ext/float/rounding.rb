class Float
  include Module.new do
    # Rounds the float with the specified precision.
    #
    #   x = 1.337
    #   x.round    # => 1
    #   x.round(1) # => 1.3
    #   x.round(2) # => 1.34
    def round(precision = nil)
      if precision
        magnitude = 10.0 ** precision
        (self * magnitude).round / magnitude
      else
        super
      end
    end
  end unless method_defined?(:precisionless_round)
end
