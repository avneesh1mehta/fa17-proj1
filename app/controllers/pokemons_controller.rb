class PokemonsController < ApplicationController
  def new
    @pokemon = Pokemon.new
  end

  def capture
    pokemon = Pokemon.find(params[:id])
    pokemon.update(trainer_id: current_trainer.id)
    redirect_to root_path
  end

  def damage
    pokemon = Pokemon.find(params[:id])
    pokemon.health -= 10
    pokemon.save
    if (pokemon.health <= 0)
      pokemon.destroy
    end
    redirect_to trainer_path(id: pokemon.trainer_id)
  end

  def create
    @pokemon = Pokemon.new(name: params[:pokemon][:name], level: 1, health: 100, trainer_id: current_trainer.id)
    if @pokemon.save
      redirect_to trainer_path(id: current_trainer.id)
    else
      redirect_to new_path
      flash[:error] = @pokemon.errors.full_messages.to_sentence
    end
  end
end
