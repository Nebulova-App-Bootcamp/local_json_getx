import 'package:json/models/asignatura.dart';
import 'package:json_annotation/json_annotation.dart';

part 'asignaturaList.g.dart';

@JsonSerializable(anyMap: true, explicitToJson: true)
class AsignaturaList {
  AsignaturaList(this.asignaturas);

  List<Asignatura> asignaturas;

  factory AsignaturaList.fromJson(Map<String, dynamic> json) =>
      _$AsignaturaListFromJson(json);

  Map<String, dynamic> toJson() => _$AsignaturaListToJson(this);
}
