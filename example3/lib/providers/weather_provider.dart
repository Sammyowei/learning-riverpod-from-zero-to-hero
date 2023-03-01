import 'package:example3/models/city_model.dart';
import 'package:example3/providers/city_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

const unknownWeather = "🌎";
final weatherProvider = FutureProvider<WeatherEmoji>(
  (ref) {
    final city = ref.watch(currentCityProvider);
    if (city != null) {
      return getWeather(city);
    } else {
      return unknownWeather;
    }
  },
);
