class Api::Internal::ChallengesController < Api::Internal::BaseController
  def index
    respond_with Challenge.all
  end

  def show
    respond_with challenge
  end

  def create
    respond_with Challenge.create!(challenge_params)
  end

  def update
    challenge.update!(challenge_params)
    respond_with challenge
  end

  def destroy
    respond_with challenge.destroy!
  end

  private

  def challenge
    @challenge ||= Challenge.find_by!(id: params[:id])
  end

  def challenge_params
    params.require(:challenge).permit(
      :title,
      :stack,
      :kind,
      :difficulty,
      :description,
      :link
    )
  end
end
