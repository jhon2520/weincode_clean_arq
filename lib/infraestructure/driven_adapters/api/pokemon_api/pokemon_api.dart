import 'package:http/http.dart' as http;

import 'package:weincode_example_clena_arq/domain/models/pokemon/gateway/pokemon_data_gateway.dart';
import 'package:weincode_example_clena_arq/domain/models/pokemon/pokemon_data_model.dart';
import 'package:weincode_example_clena_arq/infraestructure/driven_adapters/api/pokemon_api/errors/pokemon_api_error.dart';

class PokemonApi extends PokeGateway{


  @override
  Future<List<PokeDetail>> getPokemons() async {
    
    final Uri url = Uri.parse('https://pokeapi.co/api/v2/pokemon/?offset=120&limit=20');
    final response = await http.get(url);
    if(response.statusCode == 200){
      final pokemons = pokemonFromJson(response.body);
      final List<PokeDetail>  pokemonDetails = pokemons.pokeDetails;
      return pokemonDetails;
    }else{
      throw PokeApiError();
    }
  }



}