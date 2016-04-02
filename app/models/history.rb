class History < ActiveRecord::Base
  belongs_to :doctors, inverse_of: :histories
  belongs_to :patients

  def doctor
    Doctor.find(self.doctor_id)
  end

  def patient
    Patient.find(self.patient_id)
  end

end
