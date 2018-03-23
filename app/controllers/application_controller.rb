class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :set_locale
  before_action :authenticate_user!
  
  
  
  private
  
  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
    #if params[:locale].present?
    #|| I18n.default_locale
    #Rails.application.routes.default_url_options[:locale]= I18n.locale
  end

  def default_url_options(options = {})
    {locale: I18n.locale}
  end
end
