class Author < ActiveRecord::Base
	has_many :articles, :dependent => :destroy
	has_attached_file :photo
	
	validates_presence_of :name
	validate :no_pats
	
	private
	
		def no_pats
		 if name.downcase.include? 'pat'
			errors.add(:name, " Error: No authors named Pat aloud due to excessive baggage.") 
		  end
		end
end
