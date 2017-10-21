class Listing < ApplicationRecord
mount_uploader :image, ImageUploader
if Rails.env.development?
    has_attached_file :image, :styles => { :medium => "200x", :thumb => "100x100>" }, :default_url => "default.jpg"
  else
    has_attached_file :image, :styles => { :medium => "200x", :thumb => "100x100>" }, :default_url => "default.jpg"

    			#DON"T FORGET TO ADD A COMMA!!
					#:storage => :aws,
                    #:dropbox_credentials => Rails.root.join("config/secrets.yml"),
                    #:path => ":style/:id_:filename"
end
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  
  validates :name, :description, :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates_attachment_presence :image

  belongs_to :user
end