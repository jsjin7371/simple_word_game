String separateIntoLetters(String word) {
  List<String> letters = [];

  for (int i = 0; i < word.length; i++) {
    String character = word[i];

    if (character.runes.first >= 0xAC00 && character.runes.first <= 0xD7A3) {
      int unicode = character.runes.first - 0xAC00;
      int jongseongIndex = unicode % 28;
      int jungseongIndex = ((unicode - jongseongIndex) ~/ 28) % 21;
      int choseongIndex = ((unicode - jongseongIndex) ~/ 28) ~/ 21;

      String choseong = String.fromCharCode(0x1100 + choseongIndex);
      String jungseong = String.fromCharCode(0x1161 + jungseongIndex);
      String jongseong = jongseongIndex > 0
          ? String.fromCharCode(0x11A7 + jongseongIndex)
          : '';

      letters.add(choseong);
      letters.add(jungseong);
      if (jongseong.isNotEmpty) {
        letters.add(jongseong);
      }
    } else {
      letters.add(character);
    }
  }

  return letters.toString();
}
