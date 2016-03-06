class AddNameAndSurnameAndEmailToDoctorsAndPatients < ActiveRecord::Migration
  def change
    tables = [:doctors, :patients]
    columns = [{name: 'name', type: 'string'}, {name: 'surname',type: 'string'}, {name: 'email', type: 'string'}]

    tables.each do |table|
      columns.each do |column|
        add_column table, column[:name], column[:type]
      end
    end
  end
end
