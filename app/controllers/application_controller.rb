class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_q_photo
  before_action :search
# ユーザーログイン後遷移先
  def after_sign_in_path_for(resource)
    root_path
  end

# ユーザーログアウト後遷移先
  def after_sign_out_path_for(resource)
    root_path
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end

  def set_q_photo
    @q_header = Photo.ransack(params[:q])
  end

  def search
    params[:q] = { sorts: "created_at DESC" }
    @search = Photo.ransack()
    @photos = Photo.all
  end

end
