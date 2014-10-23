class User < ActiveRecord::Base
	has_many 		:projects
	belongs_to  :group

	def self.create_with_omniauth(auth)
		create! do |user|
			user.provider     = auth["provider"]
			user.uid          = auth["uid"]
			user.name         = auth["info"]["name"]
			user.github_url   = auth["info"]["urls"]["GitHub"]
			user.email        = auth["info"]["email"]
		end
	end
end
