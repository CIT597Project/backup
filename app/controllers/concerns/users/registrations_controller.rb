class Users::RegistrationsController < Devise::RegistrationsController
  before_filter :configure_permitted_parameters
  
  
  def upload
    uploaded_io = params[:user][:picture]
    File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'wb') do |file|
      file.write(uploaded_io.read)
    end
  end

    protected

    # my custom fields are :name, :heard_how
    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) do |u|
        u.permit(:username, :email, :password, :password_confirmation)
      end
      devise_parameter_sanitizer.for(:account_update) do |u|
        u.permit(:username, :picture, :email, :password, 
        :password_confirmation, :current_password,:avatar, :major, :college, 
        :grad_university, :app_degree, :high_school)
      end
    end
    
    

    

end
