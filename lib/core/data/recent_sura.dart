import 'package:shared_preferences/shared_preferences.dart';

class RecentSurahService {
  static const String _key = 'recent_surahs';
  static const int maxItems = 5;

  static Future<void> addSurah(String surahName) async {
    final prefs = await SharedPreferences.getInstance();
    List<String> recent = prefs.getStringList(_key) ?? [];

    recent.remove(surahName);

    recent.insert(0, surahName);

    if (recent.length > maxItems) {
      recent = recent.sublist(0, maxItems);
    }

    await prefs.setStringList(_key, recent.map((e) => e.toString()).toList());
  }

  static Future<List<int>> getRecentSurahIndices() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getStringList(_key)?.map(int.parse).toList() ?? [];
  }
}
