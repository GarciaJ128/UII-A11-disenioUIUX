class GeneroModel {
  final String nombre;
  final String imagen;

  GeneroModel(this.nombre, this.imagen);
}

List<GeneroModel> generosLibros = [
  GeneroModel("Novelas", "assets/icons/pluma.png"),
  GeneroModel("Clásicos", "assets/icons/reloj.png"),
  GeneroModel("Ficción", "assets/icons/inteligencia-artificial.png"),
  GeneroModel("Romance", "assets/icons/romance.png"),
  GeneroModel("Terror", "assets/icons/pelicula.png")
];
