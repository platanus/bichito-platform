class HomeController < ApplicationController
  def index
    @goals = Goal.all
    @members = Member.all
  end
end
