/// 영화 API 응답의 날짜 범위를 나타내는 DTO 클래스입니다.
///
/// [maximum]과 [minimum] 날짜 정보를 포함합니다.
/// 주로 'now_playing' 및 'upcoming' 응답에서 사용됩니다.
class MovieDateDto {
  /// 조회 가능한 최대 날짜 (형식: YYYY-MM-DD)
  final String maximum;

  /// 조회 가능한 최소 날짜 (형식: YYYY-MM-DD)
  final String minimum;

  MovieDateDto({required this.maximum, required this.minimum});

  /// JSON 맵에서 [MovieDateDto] 인스턴스를 생성합니다.
  factory MovieDateDto.fromJson(Map<String, dynamic> json) {
    return MovieDateDto(
      maximum: json['maximum'] as String,
      minimum: json['minimum'] as String,
    );
  }

  /// [MovieDateDto] 인스턴스를 JSON 맵으로 변환합니다.
  Map<String, dynamic> toJson() {
    return {'maximum': maximum, 'minimum': minimum};
  }
}
