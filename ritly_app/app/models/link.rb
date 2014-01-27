class Link < ActiveRecord::Base

	def random_generated_string
		@random_generated_string="/#{SecureRandom.urlsafe_base64(5)}"
end


end
