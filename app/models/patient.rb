class Patient < ActiveRecord::Base
  has_secure_password
  has_many :histories, inverse_of: :patient
  has_many :doctors, through: :history

  def histories
    History.where(patient_id: self.id)
  end
end
