import '../../models/astronomy/astronomy_data_model.dart';
import '../../models/astronomy/gateway/astronomy_data_gateway.dart';

class AstronomyUseCase{

  final AstronomyDailyDataGateway astronomyDailyDataGateway;
  AstronomyUseCase(this.astronomyDailyDataGateway);

  Future<AstronomyDailyData> getAstronomyData(){
    return astronomyDailyDataGateway.getAstronomyDailyData();
  }

}