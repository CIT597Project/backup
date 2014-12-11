require 'rails_helper'

RSpec.describe "majorrankings/show", :type => :view do
  before(:each) do
    @majorranking = assign(:majorranking, Majorranking.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
