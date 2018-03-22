class PokemonsController < ApplicationController
  def capture
    pokemon = Pokemon.find(params[:id])
    pokemon.trainer_id = current_trainer.id
    pokemon.save()
  end

  def damage
    pokemon = Pokemon.find(params[:id])
    trainer = pokemon.trainer_id
    pokemon.health -= 10
    if pokemon.health <= 0
        pokemon.destroy()
    else
        pokemon.save()
    end
    redirect_to trainer_path(id: trainer)
  end

  def new
    @pokemon_new = Pokemon.new
  end

  def create
    pokemon = Pokemon.new(name: params[:pokemon][:name], level: 1, health: 100, trainer_id: current_trainer.id)
    if pokemon.save
        redirect_to trainer_path(id: current_trainer.id)
    else
        flash[:error] = pokemon.errors.full_messages.to_sentence
        redirect_to pokemons_new_path
    end
  end

end
