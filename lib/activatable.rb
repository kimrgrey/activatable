require "activatable/version"

module Activatable
  def self.included(base)
    base.extend ClassMethods
    base.class_eval do
      class_attribute :activatable_fields
    end
  end

  def activate_by(field_name)
    scope_name_or_lambda = activatable_fields[field_name]
    if scope_name_or_lambda.present?
      if scope_name_or_lambda.is_a? Symbol
        scope = self.class.send(scope_name_or_lambda)
        scope.update_all(field_name => false)
      elsif scope_name_or_lambda.is_a? Proc
        scope = self.class.class_exec(self, &scope_name_or_lambda)
        scope.update_all(field_name => false)
      end
      self.update(field_name => true)
    end
  end

  module ClassMethods
    def activatable(field_name, scope_name_or_lambda)
      self.activatable_fields ||= {}
      self.activatable_fields = self.activatable_fields.merge({field_name => scope_name_or_lambda})
    end
  end
end
