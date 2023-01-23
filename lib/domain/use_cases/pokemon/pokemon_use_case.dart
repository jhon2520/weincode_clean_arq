

import '../../models/pokemon/gateway/pokemon_data_gateway.dart';
import '../../models/pokemon/pokemon_data_model.dart';

class PokemonUseCase{

  final PokeGateway pokeGateway;

  PokemonUseCase(this.pokeGateway);

  Future<List<PokeDetail>> getPokemons(){
    return pokeGateway.getPokemons();
  }

}