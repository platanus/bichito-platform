class HomeController < ApplicationController
  SHOW_CHALLENGES = ENV.fetch('SHOW_CHALLENGES') == 'true'
  def index
    @program_themes = ProgramTheme.all
    @members = Member.all
    @show_challenges = SHOW_CHALLENGES
  end
end
