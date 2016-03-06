class DeleteDoctorIdAndPatientIdAndTypeFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :doctor_id, :int
    remove_column :users, :patient_id, :int
    remove_column :users, :type, :string
  end
end
