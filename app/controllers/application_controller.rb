class ApplicationController < ActionController::Base
  
  before_action :authenticate_user!
  def after_sign_in_path_for(resource)
    "/subjects/top"  # ログイン後に遷移するpathを設定
  end

  def after_sign_out_path_for(resource)
    "/home/top" # ログアウト後に遷移するpathを設定
  end

end