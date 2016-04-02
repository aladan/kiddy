class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_patient
    @current_patient = Patient.find(session[:user_id]) if session[:user_id] 
  end

  def current_doctor
    @current_doctor = Doctor.find(session[:user_id]) if session[:user_id] 
  end

  def require_doctor
    redirect_to '/' unless current_doctor  && current_doctor.doctor?
  end

  def require_patient
    redirect_to '/' unless current_patient && current_patient.patient?
  end

end
