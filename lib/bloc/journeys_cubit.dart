import 'package:bloc/bloc.dart';
import 'package:bonbagage/bloc/journeys_state.dart';

class JourneysCubit extends Cubit<List<JourneysState>> {
  JourneysCubit() : super([]);

  void addJourneys(String city, String startDate, String endDate) {
    final newJourneys = JourneysState(
      city: city,
      startDate: startDate,
      endDate: endDate
    );

    emit([...state, newJourneys]);
  }
}