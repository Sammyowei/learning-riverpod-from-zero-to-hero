enum City {
  stockholm,
  paris,
  tokyo,
}

typedef WeatherEmoji = String;

Future<WeatherEmoji> getWeather(City city) {
  return Future.delayed(
    const Duration(seconds: 1),
    () =>
        {
          City.stockholm: "❄",
          City.paris: "⛈",
          City.tokyo: "⛅",
        }[city] ??
        "🌎",
  );
}
