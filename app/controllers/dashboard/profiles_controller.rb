class Dashboard::ProfilesController < ApplicationController
  before_action :authenticate_user!

  def index
    @profile = current_user.profile
  end

  def show
    @profile = User.find(params[:id]).profile
  end

  def edit
    @profile = current_user.profile
  end

  def update
    @profile = current_user.profile
    @profile.update(profile_params)
    redirect_to dashboard_path, notice: 'Perfil atualizado com sucesso.'
  end

  private

  def profile_params
    params.require(:profile).permit(:avatar, :bio)
  end
end
