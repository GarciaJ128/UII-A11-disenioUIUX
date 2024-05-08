class RecomendacionModel {
  final String imagen;
  final double valoracion;
  final String autor;
  final String nombreLibro;

  RecomendacionModel(
      this.imagen, this.valoracion, this.autor, this.nombreLibro);
}

List<RecomendacionModel> recomendacionesLibros = [
  RecomendacionModel(
      "assets/libros/Almendra_libro.png", 4.8, "Won-pyung Sohn", "Almendra"),
  RecomendacionModel("assets/libros/Anna-karenina_libro.png", 4.6,
      "León Tolstói", "Anna Karenina"),
  RecomendacionModel("assets/libros/eljardinLibro.png", 4.6, "Dot Hutchison",
      "El jardín de las..."),
  RecomendacionModel("assets/libros/imagen5.png", 4.8, "Gabriel García Márquez",
      "Cien años de soledad"),
  RecomendacionModel(
      "assets/libros/imagen3.png", 4.7, "Bram Stoker", "Drácula"),
];
