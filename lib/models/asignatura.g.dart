// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asignatura.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Asignatura _$AsignaturaFromJson(Map<String, dynamic> json) {
  return Asignatura(
    json['titulo'] as String,
    json['descripcion'] as String,
    json['aprobado'] as bool,
    json['numero'] as int,
  );
}

Map<String, dynamic> _$AsignaturaToJson(Asignatura instance) =>
    <String, dynamic>{
      'titulo': instance.titulo,
      'descripcion': instance.descripcion,
      'aprobado': instance.aprobado,
      'numero': instance.numero,
    };
