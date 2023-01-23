

import '../astronomy_data_model.dart';


abstract class AstronomyDailyDataGateway{
  Future<AstronomyDailyData> getAstronomyDailyData();
}