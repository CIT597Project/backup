class AddSchoolToMySchools < ActiveRecord::Migration
  def change
    add_reference :my_schools, :school, index: true
  end
end
