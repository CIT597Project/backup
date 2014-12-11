class CreateMajorrankings < ActiveRecord::Migration
  def change
    create_table :majorrankings do |t|
    
    
      t.string 'INSTITUTION_NAME'
      t.string 'INSTITUTION_ADDRESS'
      t.string 'INSTITUTION_CITY'
      t.string 'INSTITUTION_STATE'
      t.string 'INSTITUTION_ZIP'
    
      t.string 'INSTITUTION_WEB_ADDRESS'

      t.timestamps null: false
    end
  end
end
