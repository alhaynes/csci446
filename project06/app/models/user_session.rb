class User_session < Authlogic::Session::Base
	User.create(params[:user])
end