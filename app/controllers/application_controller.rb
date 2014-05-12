class ApplicationController < ActionController::Base
  include UserAgent
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :detect_device_variant
  layout :detect_device_variant_layout
  helper_method :current_user

  private
  def detect_device_variant
    request.variant = :phone  if is_mobile?
    request.variant = :tablet if is_tablet?
  end

  def detect_device_variant_layout
    "phone"  if is_mobile?
    "tablet" if is_tablet?
  end
end
