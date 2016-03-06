class AddExperienceYearsToDoctors < ActiveRecord::Migration
  def change
    add_column :doctors, :experience_years, :int
  end
end
