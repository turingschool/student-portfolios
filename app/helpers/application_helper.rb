require 'digest/md5'

module ApplicationHelper
	def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def avatar_url(user)
    gravatar_id = Digest::MD5::hexdigest(user.email).downcase
    "http://gravatar.com/avatar/#{gravatar_id}.png"
  end
end
