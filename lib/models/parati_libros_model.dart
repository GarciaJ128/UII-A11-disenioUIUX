class ParaTiModel {
  final String imagen;
  final String nombre;
  final String autor;
  final String valoracion;
  final String precio;

  ParaTiModel(
      this.imagen, this.nombre, this.autor, this.valoracion, this.precio);
}

List<ParaTiModel> paratiModel = [
  ParaTiModel(
      "assets/libros/demian_libro.png", "Demian", "Herman Hesse", "4.8", "360"),
  ParaTiModel(
      "assets/libros/imagen2.png", "Aquiles", "Herman Hesse", "4.8", "360"),
  ParaTiModel("assets/libros/imagen5.png", "Cien años de soledad",
      "Herman Hesse", "4.8", "360"),
  ParaTiModel("assets/libros/eljardinLibro.png", "El jardin de las...",
      "Herman Hesse", "4.8", "360"),
  ParaTiModel("assets/libros/Almendra_libro.png", "Almendra", "Herman Hesse",
      "4.8", "360"),
];
