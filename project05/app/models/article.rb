class Article < ActiveRecord::Base

	validates_presence_of :title
	validates_presence_of :author
	validates_presence_of :body
	validate :no_pats
	
	
	
	private
	
		def no_pats
		 if author.downcase.include? 'pat'
			errors.add(:author, " Error: No authors named Pat aloud due to excessive baggage.") 
		  end
		end

	
end
