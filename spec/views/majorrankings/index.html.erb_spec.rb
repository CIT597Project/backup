require 'rails_helper'

RSpec.describe "majorrankings/index", :type => :view do
  before(:each) do
    assign(:majorrankings, [
      Majorranking.create!(),
      Majorranking.create!()
    ])
  end

  it "renders a list of majorrankings" do
    render
  end
end
