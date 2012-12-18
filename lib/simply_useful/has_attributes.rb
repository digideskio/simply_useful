module SimplyUseful
  module HasAttributes
    def initialize(attributes = nil)
      self.attributes = attributes
      yield self if block_given?
    end

    def attributes=(attributes) # , guard_protected_attributes = true
                                #attributes = filter_attributes(attributes) if !attributes.blank? && guard_protected_attributes
      attributes.each do |key, value|
        send(key.to_s + '=', value)
      end if attributes
    end

    def attributes
      attributes = instance_variables
      attributes.delete("@errors")
      Hash[*attributes.collect { |attribute| [attribute[1..-1].to_sym, instance_variable_get(attribute)] }.flatten]
    end
  end
end