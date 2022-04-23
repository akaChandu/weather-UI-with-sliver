const String baseAssetURL =
    'https://dartpad-workshops-io2021.web.app/getting_started_with_slivers/';
const String headerImage = '${baseAssetURL}Assets/header.jpeg';

class DailyForecast {
  const DailyForecast({
    required this.id,
    required this.imageId,
    required this.highTemp,
    required this.lowTemp,
    required this.description,
  });
  final int id;
  final String imageId;
  final int highTemp;
  final int lowTemp;
  final String description;

  static const List<String> _weekdays = <String>[
    'Sunday',
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
  ];

  String getWeekday(int today) {
    final int offset = today + id;
    final int day = offset >= 7 ? offset - 7 : offset;
    return _weekdays[day];
  }

  int getDate(int today) {
    return today + id;
  }
}

const Map<int, DailyForecast> _kDummyData = {
  0: DailyForecast(
    id: 0,
    imageId: '${baseAssetURL}assets/day_0.jpeg',
    highTemp: 73,
    lowTemp: 52,
    description:
        'Partly cloudy in the morning with sun appearing in the Afternoon.',
  ),
  1: DailyForecast(
    id: 1,
    imageId: '${baseAssetURL}assets/day_1.jpeg',
    highTemp: 70,
    lowTemp: 50,
    description: 'Partly sunny.',
  ),
  2: DailyForecast(
    id: 2,
    imageId: '${baseAssetURL}assets/day_2.jpeg',
    highTemp: 71,
    lowTemp: 55,
    description: 'Party cloudy.',
  ),
  3: DailyForecast(
    id: 3,
    imageId: '${baseAssetURL}assets/day_3.jpeg',
    highTemp: 74,
    lowTemp: 60,
    description: 'Thunderstorms in the Evening.',
  ),
  4: DailyForecast(
    id: 4,
    imageId: '${baseAssetURL}assets/day_4.jpeg',
    highTemp: 67,
    lowTemp: 60,
    description: 'Severe Thunderstorm warning.',
  ),
  5: DailyForecast(
    id: 5,
    imageId: '${baseAssetURL}assets/day_5.jpeg',
    highTemp: 73,
    lowTemp: 57,
    description: 'Cloudy with shower in the morning.',
  ),
  6: DailyForecast(
      id: 6,
      imageId: '${baseAssetURL}assets/day_6.jpeg',
      highTemp: 75,
      lowTemp: 58,
      description: 'Sun throughout the day.'),
  7: DailyForecast(
      id: 7,
      imageId:
          'https://media.istockphoto.com/photos/longs-peak-at-bear-lake-longs-peak-and-glacier-gorge-reflecting-in-picture-id1043959780?k=20&m=1043959780&s=612x612&w=0&h=RkdkNJsHh2QgDX6L65rbU8SdIkQP_5rXwfZQ2-bXtiA=',
      highTemp: 72,
      lowTemp: 65,
      description: 'Sunny day.'),
};

class Server {
  static List<DailyForecast> getDailyForecastList() {
    return _kDummyData.values.toList();
  }

  static DailyForecast getDailyForecastByID(int id) {
    assert(id >= 0 && id <= 7);
    return _kDummyData[id]!;
  }
}
