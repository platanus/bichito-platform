class HomeController < ApplicationController
  def index
    @program_themes = ProgramTheme.all
    @goals = Goal.all
    @members = Member.all
  end
end
