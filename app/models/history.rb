class History < ActiveRecord::Base
  belongs_to :doctors, inverse_of: :histories
  belongs_to :patients

  def doctor
    Doctor.find_by(id: self.doctor_id)
  end

  def patient
    Patient.find_by(id: self.patient_id)
  end

end
