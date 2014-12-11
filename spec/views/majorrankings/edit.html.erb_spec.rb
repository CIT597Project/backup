require 'rails_helper'

RSpec.describe "majorrankings/edit", :type => :view do
  before(:each) do
    @majorranking = assign(:majorranking, Majorranking.create!())
  end

  it "renders the edit majorranking form" do
    render

    assert_select "form[action=?][method=?]", majorranking_path(@majorranking), "post" do
    end
  end
end
