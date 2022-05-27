class HomeController < ApplicationController
  def index
    @program_themes = ProgramTheme.all
    @members = Member.all
  end
end
