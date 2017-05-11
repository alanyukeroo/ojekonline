class Auth < ApplicationRecord
  has_one :user
  def self.authenticate_with_token(token)
  	auth = self.find_by(token: token)
  	authenticated = false
  	status_code = 200
  	if auth.nil?
  	  status_code = 401 #invalid token
  	elsif auth.expired_at < Time.zone.now 
  	  status_code = 403 #expired. can be discussed before
  	else #in case of success
  	  authenticated = true
  	  user = User.find(auth.user_id)
  	end
  	return {user: user,status_code: status_code, authenticated: authenticated}
  end
end
