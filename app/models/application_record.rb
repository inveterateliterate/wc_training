class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class

  def self.enums_for_admin_filter_dropdowns(enums)
    options = {}
    send(enums).keys.each do |key|
      options[key.to_s] = key.titleize
    end
    options
  end

  # def self.enums_for_select_dropdowns(enums)
  #   send(enums).map { |key, value| [key.titleize, value] }
  #   send(enums).keys.map { |key| [key.titleize, key] }
  # end

  def self.enums_for_admin_select_dropdowns(enums)
    options = {}
    send(enums).keys.each do |key|
      options[key.titleize] = key
    end
    options
  end
end
