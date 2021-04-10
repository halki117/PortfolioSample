class Location < ApplicationRecord

  belongs_to :user

  mount_uploaders :images, ImageUploader 
  serialize :images, JSON 
end
