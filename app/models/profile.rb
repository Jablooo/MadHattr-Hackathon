# initial comment
class Profile < ApplicationRecord
  belongs_to :user

  include ImageUploader[:avatar]
end
