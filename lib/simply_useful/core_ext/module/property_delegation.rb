require 'active_support/core_ext/module/delegation'

class Module

  def delegate_property *properties
    options = {}
    methods = []

    properties.each do |options_or_property|
      if options_or_property.is_a? Hash
        options.merge! options_or_property
      else
        methods << options_or_property
        methods << "#{options_or_property.to_s}="
      end
    end

    delegate *methods, options
  end

end