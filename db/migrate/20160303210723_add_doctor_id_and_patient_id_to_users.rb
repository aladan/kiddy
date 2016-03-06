class AddDoctorIdAndPatientIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :doctor_id, :int
    add_column :users, :patient_id, :int
  end
end
