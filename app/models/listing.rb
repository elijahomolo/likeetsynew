class Listing < ApplicationRecord
mount_uploader :image, ImageUploader
has_attached_file :image, :styles => { :medium => "200x", :thumb => "100x100>" }, :default_url => "default.jpg"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  #mount_uploader :image, ImageUploader
end
