class AstronomyApiError implements Exception{

  @override
  String toString(){
    return "Error al obtener la información astronómica";
  }

}