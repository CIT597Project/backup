require 'rails_helper'

RSpec.describe "recommendeduniversities/new", :type => :view do
  before(:each) do
    assign(:recommendeduniversity, Recommendeduniversity.new(
      :institution_name => "MyString",
      :institution_address => "MyString",
      :institution_city => "MyString",
      :institution_state => "MyString",
      :institution_zip => "MyString",
      :institution_web_address => "MyString"
    ))
  end

  it "renders new recommendeduniversity form" do
    render

    assert_select "form[action=?][method=?]", recommendeduniversities_path, "post" do

      assert_select "input#recommendeduniversity_institution_name[name=?]", "recommendeduniversity[institution_name]"

      assert_select "input#recommendeduniversity_institution_address[name=?]", "recommendeduniversity[institution_address]"

      assert_select "input#recommendeduniversity_institution_city[name=?]", "recommendeduniversity[institution_city]"

      assert_select "input#recommendeduniversity_institution_state[name=?]", "recommendeduniversity[institution_state]"

      assert_select "input#recommendeduniversity_institution_zip[name=?]", "recommendeduniversity[institution_zip]"

      assert_select "input#recommendeduniversity_institution_web_address[name=?]", "recommendeduniversity[institution_web_address]"
    end
  end
end
