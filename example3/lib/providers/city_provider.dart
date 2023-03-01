import 'package:example3/models/city_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';


// This provider will be changed by the UI
final currentCityProvider = StateProvider<City?>((ref) => null);
