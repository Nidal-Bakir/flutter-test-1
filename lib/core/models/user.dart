import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  factory User({
    @JsonKey(name: 'id', required: true, nullable: false) required int userId,
    @JsonKey(required: true, nullable: false) required String name,
    @JsonKey(required: true, nullable: false) required String email,
  }) = _User;

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}
