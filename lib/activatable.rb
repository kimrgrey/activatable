require 'activatable/class_methods'
require 'activatable/instance_methods'

module Activatable
  def self.included(base)
    base.extend Activatable::ClassMethods
    base.include Activatable::InstanceMethods
    
    base.class_eval do
      class_attribute :activatable_fields
    end
  end
end
