module Activatable
  module ClassMethods
    def activatable(field_name, scope_name_or_lambda)
      self.activatable_fields ||= {}
      self.activatable_fields = self.activatable_fields.merge({field_name => scope_name_or_lambda})
    end
  end
end