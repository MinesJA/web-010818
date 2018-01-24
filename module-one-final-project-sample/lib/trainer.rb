class Trainer < ActiveRecord::Base
  has_many :trainer_pokemons
  has_many :pokemons, through: :trainer_pokemons

  def display_pokemons
    pokemons.each do |pokemon|
      puts "number.#{pokemon.pokemon_number} name.#{pokemon.name} weight.#{pokemon.weight}"
    end
  end

  def catch_pokemon
    pokemon_hash = Adapter.get_random_pokemon
    newPokemon = Pokemon.find_or_create_through_hash(pokemon_hash)
    newPokemon.tap{|pokemon| self.pokemons << pokemon}
  end

  def self.list_all_trainers
    all.each do |trainer|
      puts "id.#{trainer.id} name: #{trainer.name}, town: #{trainer.town}"
    end
  end
end
