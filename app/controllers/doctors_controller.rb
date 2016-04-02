class DoctorsController < ApplicationController
  before_action :require_doctor, only: [:index, :show]

  def index
    @doctors = Doctor.all
  end

  def new
    @doctor = Doctor.new
  end

  def create
    @doctor = Doctor.create(doctor_params)
    if @doctor.save
      session[:user_id] = @doctor.id
      redirect_to "/doctors/#{@doctor.id}"
    else
      redirect_to '/signup'
    end
  end

  def edit
    @doctor = Doctor.find(params[:id])
  end

  def update
    @doctor = current_doctor
    if @doctor.update_attributes(doctor_params)
      redirect_to doctor_path @doctor
    else
      redirect_to action: :edit
    end
  end

  def show
    @doctor = Doctor.find(params[:id])
  end

  private
    def doctor_params
      params.require(:doctor).permit(:name, :surname, :email, :password, :speciality, :speciality_description, :experience_years, :avatar)
    end
end
