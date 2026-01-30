/// 영화 정보를 담고 있는 DTO 클래스입니다.
///
/// API 응답의 'results' 리스트에 포함된 개별 영화 데이터를 표현합니다.
class MovieDto {
  /// 성인 영화 여부
  final bool adult;

  /// 배경 이미지 경로 (nullable)
  final String? backdropPath;

  /// 장르 ID 목록
  final List<int> genreIds;

  /// 영화 고유 ID
  final int id;

  /// 원본 언어 코드 (예: "en", "ko")
  final String originalLanguage;

  /// 원본 제목
  final String originalTitle;

  /// 영화 줄거리 요약
  final String overview;

  /// 인기도 점수
  final double popularity;

  /// 포스터 이미지 경로 (nullable)
  final String? posterPath;

  /// 개봉일 (형식: YYYY-MM-DD)
  final String releaseDate;

  /// 영화 제목
  final String title;

  /// 비디오 포함 여부
  final bool video;

  /// 평점 평균
  final double voteAverage;

  /// 투표 수
  final int voteCount;

  MovieDto({
    required this.adult,
    this.backdropPath,
    required this.genreIds,
    required this.id,
    required this.originalLanguage,
    required this.originalTitle,
    required this.overview,
    required this.popularity,
    this.posterPath,
    required this.releaseDate,
    required this.title,
    required this.video,
    required this.voteAverage,
    required this.voteCount,
  });

  /// JSON 맵에서 [MovieDto] 인스턴스를 생성합니다.
  factory MovieDto.fromJson(Map<String, dynamic> json) {
    return MovieDto(
      adult: json['adult'] as bool? ?? false,
      backdropPath: json['backdrop_path'] as String?,
      genreIds:
          (json['genre_ids'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          [],
      id: json['id'] as int? ?? 0,
      originalLanguage: json['original_language'] as String? ?? '',
      originalTitle: json['original_title'] as String? ?? '',
      overview: json['overview'] as String? ?? '',
      popularity: (json['popularity'] as num?)?.toDouble() ?? 0.0,
      posterPath: json['poster_path'] as String?,
      releaseDate: json['release_date'] as String? ?? '',
      title: json['title'] as String? ?? '',
      video: json['video'] as bool? ?? false,
      voteAverage: (json['vote_average'] as num?)?.toDouble() ?? 0.0,
      voteCount: json['vote_count'] as int? ?? 0,
    );
  }

  /// [MovieDto] 인스턴스를 JSON 맵으로 변환합니다.
  Map<String, dynamic> toJson() {
    return {
      'adult': adult,
      'backdrop_path': backdropPath,
      'genre_ids': genreIds,
      'id': id,
      'original_language': originalLanguage,
      'original_title': originalTitle,
      'overview': overview,
      'popularity': popularity,
      'poster_path': posterPath,
      'release_date': releaseDate,
      'title': title,
      'video': video,
      'vote_average': voteAverage,
      'vote_count': voteCount,
    };
  }
}
