require 'rails_helper'

RSpec.describe "recommendeduniversities/index", :type => :view do
  before(:each) do
    assign(:recommendeduniversities, [
      Recommendeduniversity.create!(
        :institution_name => "Institution Name",
        :institution_address => "Institution Address",
        :institution_city => "Institution City",
        :institution_state => "Institution State",
        :institution_zip => "Institution Zip",
        :institution_web_address => "Institution Web Address"
      ),
      Recommendeduniversity.create!(
        :institution_name => "Institution Name",
        :institution_address => "Institution Address",
        :institution_city => "Institution City",
        :institution_state => "Institution State",
        :institution_zip => "Institution Zip",
        :institution_web_address => "Institution Web Address"
      )
    ])
  end

  it "renders a list of recommendeduniversities" do
    render
    assert_select "tr>td", :text => "Institution Name".to_s, :count => 2
    assert_select "tr>td", :text => "Institution Address".to_s, :count => 2
    assert_select "tr>td", :text => "Institution City".to_s, :count => 2
    assert_select "tr>td", :text => "Institution State".to_s, :count => 2
    assert_select "tr>td", :text => "Institution Zip".to_s, :count => 2
    assert_select "tr>td", :text => "Institution Web Address".to_s, :count => 2
  end
end
