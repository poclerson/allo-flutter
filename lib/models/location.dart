import 'location_fact.dart';

class Location {
  final int id;
  final String name;
  final String imagePath;
  final List<LocationFact> facts;

  Location(this.id, this.name, this.imagePath, this.facts);

  static Location fetchByID(int locationID) {
    return Location.fetchAll()
        .where((location) => location.id == locationID)
        .first;
  }

  static List<Location> fetchAll() {
    return [
      Location(1, 'Penis', 'assets/images/image.png', [
        LocationFact('Summary',
            'While we could go on about the ethereal glow and seemingly endless heights of this bamboo grove on the outskirts of Kyoto, the sight\'s pleasures extend beyond the visual realm.'),
        LocationFact('How to Get There',
            'Kyoto airport, with several terminals, is located 16 kilometres south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports.'),
      ]),
      Location(2, 'Lol', 'assets/images/image.png', [
        LocationFact('Summary',
            'While we could go on about the ethereal glow and seemingly endless heights of this bamboo grove on the outskirts of Kyoto, the sight\'s pleasures extend beyond the visual realm.'),
        LocationFact('How to Get There',
            'Kyoto airport, with several terminals, is located 16 kilometres south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports.'),
      ]),
      Location(3, 'Arashiyama Bamboo Grove', 'assets/images/image.png', [
        LocationFact('Summary',
            'While we could go on about the ethereal glow and seemingly endless heights of this bamboo grove on the outskirts of Kyoto, the sight\'s pleasures extend beyond the visual realm.'),
        LocationFact('How to Get There',
            'Kyoto airport, with several terminals, is located 16 kilometres south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports.'),
      ]),
    ];
  }
}
