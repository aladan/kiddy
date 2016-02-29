class User < ActiveRecord::Base
  has_secure_password

  def doctor?
    self.role == 'doctor'
  end

  def patient?
    self.role == 'patient'
  end

  def admin?
    self.role == 'admin'
  end

end
