require 'active_record'

module Coercionlogic
  def write_attribute_with_coercion(attr_name, value)
    value = nil if value.is_a?(String) && value.blank?
    write_attribute_without_coercion(attr_name, value)
  end
end

ActiveRecord::Base.class_eval do
  include Coercionlogic
  alias_method_chain :write_attribute, :coercion
end