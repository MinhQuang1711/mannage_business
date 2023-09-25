import 'package:freezed_annotation/freezed_annotation.dart';

part 'token.freezed.dart';
part 'token.g.dart';

@Freezed(fromJson: true, toJson: true)
class Token with _$Token {
  const factory Token({
    @JsonKey(name: "AccessToken") String? accessToken,
    @JsonKey(name: "RefreshToken") String? refreshToken,
  }) = _Token;

  factory Token.fromJson(Map<String, dynamic> json) => _$TokenFromJson(json);
}
