class User < ActiveRecord::Base
	has_secure_password
	has_many :tips
	has_attached_file :photo, styles: {:medium => "300x300>", :thumb => "100x100>"}
 
	validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
	validates :name, :email, presence: true, length: { in: 2..255 }
end