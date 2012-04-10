class User < ActiveRecord::Base
	acts_as_authentic do |config|
		config.merge_validates_length_of_password_field_options :minimum => 6
	end
	
	belongs_to :role
	has_many :games
	
	has_attached_file :photo, :styles => {:small => "150x150>" }, :default_url => '/images/picture.png'
	
	def role_symbols
		roles.map do |role|
			role.name.underscore.to_sym
		end
	end
end
