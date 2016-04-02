class Doctor < ActiveRecord::Base
  has_attached_file :avatar
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
  has_secure_password
  has_many :histories, inverse_of: :doctor
  has_many :patients, through: :history

  def histories
    History.where(doctor_id: self.id)
  end
end
