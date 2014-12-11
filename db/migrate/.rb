class AddColumnsToMajorrankings < ActiveRecord::Migration
  def change
    add_column :majorrankings, :INSTITUTION_ADDRESS, :string
    add_column :majorrankings, :INSTITUTION_CITY, :string
    add_column :majorrankings, :INSTITUTION_STATE, :string
    add_column :majorrankings, :INSTITUTION_ZIP, :string
    add_column :majorrankings, :INSTITUTION_WEB_ADDRESS, :string
  end
end
