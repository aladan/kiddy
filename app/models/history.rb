class History < ActiveRecord::Base
  has_attached_file :attachment
  validates_attachment :attachment,
   content_type: { content_type: [/\Aimage/, "application/pdf"] },
   size: { in: 0..10.kilobytes }
   
  belongs_to :doctors, inverse_of: :histories
  belongs_to :patients

  def doctor
    Doctor.find_by(id: self.doctor_id)
  end

  def patient
    Patient.find_by(id: self.patient_id)
  end

end
