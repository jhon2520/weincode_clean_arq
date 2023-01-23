import 'package:http/http.dart' as http;


import 'package:weincode_example_clena_arq/domain/models/astronomy/astronomy_data_model.dart';
import 'package:weincode_example_clena_arq/domain/models/astronomy/gateway/astronomy_data_gateway.dart';
import 'package:weincode_example_clena_arq/infraestructure/driven_adapters/api/astronomy_api/errors/astronomy_api_error.dart';

class AstronomyApi extends AstronomyDailyDataGateway{



  @override
  Future<AstronomyDailyData> getAstronomyDailyData() async{
    
    final url = Uri.parse("https://go-apod.herokuapp.com/apod");
    final response = await http.get(url);

    if(response.statusCode == 200){
      final astronomyData = astronomyDailyDataFromJson(response.body);
      return astronomyData!;
    }else{
      throw AstronomyApiError();
    }


  }

}