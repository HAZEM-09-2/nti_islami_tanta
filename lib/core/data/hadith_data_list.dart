class HadithModel {
  // final String title;
  final String filePath;

  const HadithModel({ required this.filePath});
}

class HadithData {
  static const int count = 50;

  static List<HadithModel> hadithList = List.generate(
    count,
    (index) => HadithModel(
      filePath: 'assets/files/Hadeeth/h${index + 1}.txt',
    ),
  );
}

