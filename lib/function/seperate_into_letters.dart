String separateIntoLetters(String word) {
  String normalizeKoreanCharacter(String character) {
    int unicode = character.runes.first - 0xAC00;
    int choseongIndex = (unicode ~/ 28) ~/ 21;
    int jungseongIndex = (unicode ~/ 28) % 21;
    int jongseongIndex = unicode % 28;

    String choseong = String.fromCharCode(0x1100 + choseongIndex);
    String jungseong = String.fromCharCode(0x1161 + jungseongIndex);
    String jongseong =
        jongseongIndex > 0 ? String.fromCharCode(0x11A7 + jongseongIndex) : '';

    return choseong + jungseong + jongseong;
  }

  List<String> letters = [];

  for (int i = 0; i < word.length; i++) {
    String character = word[i];

    if (character.runes.first >= 0xAC00 && character.runes.first <= 0xD7A3) {
      letters.add(normalizeKoreanCharacter(character));
    } else {
      letters.add(character);
    }
  }

  return letters
      .join(''); // Join the elements of the list without any separator
}
