class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def self.search(search)
    where("name ILIKE ? OR ingredients ILIKE ? OR cooking_instructions ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
  end

end
