class Capitalize {
  String toCapitalize(String string) {
    return string[0].toUpperCase() + string.substring(1).toLowerCase();
  }
}
