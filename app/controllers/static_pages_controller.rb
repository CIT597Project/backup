class StaticPagesController < ApplicationController
  def home
  	render layout: "home"
  end

  def help
  end
end
