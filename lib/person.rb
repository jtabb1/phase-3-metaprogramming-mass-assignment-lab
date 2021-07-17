class Person
  # original solution below passes tests
  def initialize_o(attributes)
    attributes.each do |key, value|
      self.class.attr_accessor(key)
      self.send("#{key}=", value)
    end
  end

  # additional logic in official solution gives an
  # extra feature and also passes the tests:
  def initialize(attributes = nil)
    if attributes
      attributes.each do |key, value|
        self.class.attr_accessor(key)
        self.send("#{key}=", value)
      end
    end
  end
end