import 'package:json_annotation/json_annotation.dart';

part 'asignatura.g.dart';

@JsonSerializable()
class Asignatura {
  Asignatura(this.titulo, this.descripcion, this.aprobado, this.numero);

  String titulo;
  String descripcion;
  bool aprobado;
  int numero;

  factory Asignatura.fromJson(Map<String, dynamic> json) =>
      _$AsignaturaFromJson(json);

  Map<String, dynamic> toJson() => _$AsignaturaToJson(this);
}
