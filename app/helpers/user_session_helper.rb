module UserSessionHelper
  def authorize_user
    authenticate_result = get_user
  	@current_user = authenticate_result[:user]    
    render json: authenticate_result, status: authenticate_result[:status_code] unless authenticate_result[:authenticated] #after render will not continue
  end
 
  def current_user
  	@current_user ||= get_user[:user]
  end

  def get_user
  	token = request.headers["Authorization"]
  	user = Auth.authenticate_with_token(token)
  end

end
