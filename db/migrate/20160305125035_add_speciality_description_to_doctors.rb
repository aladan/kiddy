class AddSpecialityDescriptionToDoctors < ActiveRecord::Migration
  def change
    add_column :doctors, :speciality_description, :text
  end
end
