require 'rails_helper'

RSpec.describe "majorrankings/new", :type => :view do
  before(:each) do
    assign(:majorranking, Majorranking.new())
  end

  it "renders new majorranking form" do
    render

    assert_select "form[action=?][method=?]", majorrankings_path, "post" do
    end
  end
end
