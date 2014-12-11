class AddAppDegreeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :app_degree, :string
  end
end
