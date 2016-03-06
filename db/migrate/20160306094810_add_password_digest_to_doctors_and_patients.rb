class AddPasswordDigestToDoctorsAndPatients < ActiveRecord::Migration
  def change
    add_column :doctors, :password_digest, :string
    add_column :patients, :password_digest, :string
  end
end
