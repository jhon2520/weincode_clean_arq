import '../pokemon_data_model.dart';

abstract class PokeGateway{
  Future<List<PokeDetail>> getPokemons();
}