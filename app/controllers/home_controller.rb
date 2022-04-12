class HomeController < ApplicationController
  def index
    @program_themes = ProgramTheme.all
  end
end
