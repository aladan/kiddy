class AddUsersIdToHistories < ActiveRecord::Migration
  def change
    add_column :histories, :doctor_id, :int
    add_column :histories, :patient_id, :int

    add_index :histories, :doctor_id
    add_index :histories, :patient_id
  end
end
