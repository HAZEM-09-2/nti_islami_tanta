class QuranModel {
  // final String title;
  final String filePath;

  const QuranModel({required this.filePath});
}

class QuranData {
  static const int count = 114;

  static List<QuranModel> quranList = List.generate(
    count,
    (index) => QuranModel(filePath: 'assets/files/Siras/${index + 1}.txt'),
  );
}
