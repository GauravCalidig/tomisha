class HomeData {
  String? title;
  final String number;
  final String description;
  final String image;

  HomeData({required this.number, this.title, required this.description, required this.image});

  /// List of data for the first column of the home screen.
  static List<HomeData> firstColumn = [
    HomeData(
        title: 'Drei einfache Schritte \nzu deinem neuen Job',
        number: '1.',
        description: '\n\n\n Erstellen dein Lebenslauf',
        image: 'assets/2.svg'),
    HomeData(
        title: 'Drei einfache Schritte \nzu deinem neuen Mitarbeiter',
        number: '1.',
        description: '\n\n\n Erstellen dein \nunternehmensprofil',
        image: 'assets/2.svg'),
    HomeData(
        title: 'Drei einfache Schritte zur \n Vermittlung neuer Mitarbeiter',
        number: '1.',
        description: '\n\n\n Erstellen dein Lebenslauf',
        image: 'assets/2.svg'),
  ];

  /// List of data for the second column of the home screen.
  static List<HomeData> secondColumn = [
    HomeData(number: '2.', description: '\n\n\n Erstellen dein Lebenslauf', image: 'assets/2/1.svg'),
    HomeData(number: '2.', description: '\n\n\n Erstellen ein Jobinserat', image: 'assets/2/2.svg'),
    HomeData(
        number: '2.', description: '\n\n\n Erhalte Vermittlungs- \nangebot von Arbeitgeber', image: 'assets/2/3.svg'),
  ];

  /// List of data for the third column of the home screen.
  static List<HomeData> thirdColumn = [
    HomeData(number: '3.', description: '\n\n\n Mit nur einem Klick \n bewerben', image: 'assets/3/1.svg'),
    HomeData(number: '3.', description: '\n\n\n Wähle deinen \n neuen Mitarbeiter aus', image: 'assets/3/2.svg'),
    HomeData(
        number: '3.', description: '\n\n\n Vermittlung nach \n Provision oder \n Stundenlohn', image: 'assets/3/3.svg'),
  ];
}
