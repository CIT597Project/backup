class AddFollowToSchools < ActiveRecord::Migration
  def change
    add_column :schools, :follow, :integer
  end
end
