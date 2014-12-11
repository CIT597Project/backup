class AddGradUniversityToUsers < ActiveRecord::Migration
  def change
    add_column :users, :grad_university, :string
  end
end
