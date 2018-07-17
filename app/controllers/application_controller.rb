class ApplicationController < ActionController::Base
  def index
    @heroes = Hero.all
    render "index.json.jbuilder"
  end

  def show
    @hero = Hero.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def create
    @hero = Hero.new(
      name: params[:name],
      secret_identity: params[:secret_identity],
      powers: params[:powers],
      )
    @hero.save
    render "show.json.jbuilder"
  end

  def update
    @hero = Hero.find_by(id: params[:id])
    @hero.name = params[:name] || @hero.name
    @hero.secret_identity = params[:secret_identity] || @hero.secret_identity
    @hero.powers = params[:powers] || @hero.powers
    @hero.save
    render "show.json.jbuilder"
  end

  def destroy
    @hero = Hero.find_by(id: params[:id])
    @hero.destroy
    render json: {message: "Way to be like Thanos!"}
  end
end
