import '/import.dart';

class DistanceService {
  final distanceRepository = DistanceRepository();

  Future<dynamic> getDistance(LocationState state, String? idToken, double lat,
      double lng, double targetLat, double targetLng) async {
    // params
    final Map<String, dynamic> params = {
      'lat': lat,
      'lng': lng,
      'targetLat': targetLat,
      'targetLng': targetLng,
    };

    return await distanceRepository.getDistance(params, idToken);
  }
}
