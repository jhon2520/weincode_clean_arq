class PokeApiError implements Exception{

  @override
  String toString(){
    return "No se pudo obtener la lista de pokemons";
  }

}