require 'rails_helper'

RSpec.describe "recommendeduniversities/show", :type => :view do
  before(:each) do
    @recommendeduniversity = assign(:recommendeduniversity, Recommendeduniversity.create!(
      :institution_name => "Institution Name",
      :institution_address => "Institution Address",
      :institution_city => "Institution City",
      :institution_state => "Institution State",
      :institution_zip => "Institution Zip",
      :institution_web_address => "Institution Web Address"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Institution Name/)
    expect(rendered).to match(/Institution Address/)
    expect(rendered).to match(/Institution City/)
    expect(rendered).to match(/Institution State/)
    expect(rendered).to match(/Institution Zip/)
    expect(rendered).to match(/Institution Web Address/)
  end
end
