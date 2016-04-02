class PatientsController < ApplicationController
  before_action :require_patient, only: [:index, :show]

  def index
    @patients = Patient.all
  end

  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.create(patient_params)
    if @patient.save
      session[:user_id] = @patient.id
      redirect_to "/patients/#{@patient.id}"
    else
      redirect_to '/signup'
    end
  end

  def edit
   @patient = Patient.find(params[:id])
  end

  def update
    @patient = current_patient
    if @patient.update_attributes(patient_params)
      redirect_to patient_path(@patient)
    else
      render action: :edit
    end
  end

  def show
    @patient = Patient.find(params[:id])
  end

  private
    def patient_params
      params.require(:patient).permit(:name, :surname, :email, :password)
    end
end
