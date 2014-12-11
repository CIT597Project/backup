class CreateMySchools < ActiveRecord::Migration
  def change
    create_table :my_schools do |t|
      t.string :name
      t.text :comment
      t.references :user, index: true

      t.timestamps null: false
    end
    add_index :my_schools, [:user_id, :created_at]
  end
end
