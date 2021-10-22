// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'asignaturaList.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AsignaturaList _$AsignaturaListFromJson(Map json) {
  return AsignaturaList(
    (json['asignaturas'] as List<dynamic>)
        .map((e) => Asignatura.fromJson(Map<String, dynamic>.from(e as Map)))
        .toList(),
  );
}

Map<String, dynamic> _$AsignaturaListToJson(AsignaturaList instance) =>
    <String, dynamic>{
      'asignaturas': instance.asignaturas.map((e) => e.toJson()).toList(),
    };
