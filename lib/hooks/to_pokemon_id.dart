class ToPokemonId {
  String toPokemonId(n) {
    if (n.length == 1) {
      return '#00$n';
    } else if (n.length == 2) {
      return '#00$n';
    } else {
      return '#$n';
    }
  }
}
