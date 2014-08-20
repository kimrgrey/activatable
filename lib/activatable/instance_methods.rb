module Activatable
  module InstanceMethods
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

    def deactivate_by(field_name)
      self.update(field_name => false)
    end
  end
end