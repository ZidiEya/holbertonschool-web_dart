String longestUniqueSubstring(String str) {
  String longest = "";
  String current = "";

  for (int i = 0; i < str.length; i++) {
    String char = str[i];

    // If the character is already in the current substring
    if (current.contains(char)) {
      // Remove everything up to and including the first occurrence of that character
      current = current.substring(current.indexOf(char) + 1);
    }

    current += char;

    if (current.length > longest.length) {
      longest = current;
    }
  }

  return longest;
}
