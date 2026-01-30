import 'movie_date_dto.dart';
import 'movie_dto.dart';

/// 영화 API의 최상위 응답을 처리하는 DTO 클래스입니다.
///
/// [page], [results], [totalPages], [totalResults]를 공통적으로 포함하며,
/// [dates]는 'now_playing' 및 'upcoming' 응답에서만 존재합니다.
class MovieResponseDto {
  /// 날짜 범위 정보 (nullable)
  /// Now Playing, Upcoming 응답에만 포함됨
  final MovieDateDto? dates;

  /// 현재 페이지 번호
  final int page;

  /// 영화 목록
  final List<MovieDto> results;

  /// 전체 페이지 수
  final int totalPages;

  /// 전체 결과 수
  final int totalResults;

  MovieResponseDto({
    this.dates,
    required this.page,
    required this.results,
    required this.totalPages,
    required this.totalResults,
  });

  /// JSON 맵에서 [MovieResponseDto] 인스턴스를 생성합니다.
  factory MovieResponseDto.fromJson(Map<String, dynamic> json) {
    return MovieResponseDto(
      dates: json['dates'] != null
          ? MovieDateDto.fromJson(json['dates'] as Map<String, dynamic>)
          : null,
      page: json['page'] as int? ?? 1,
      results:
          (json['results'] as List<dynamic>?)
              ?.map((e) => MovieDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      totalPages: json['total_pages'] as int? ?? 0,
      totalResults: json['total_results'] as int? ?? 0,
    );
  }

  /// [MovieResponseDto] 인스턴스를 JSON 맵으로 변환합니다.
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      'page': page,
      'results': results.map((v) => v.toJson()).toList(),
      'total_pages': totalPages,
      'total_results': totalResults,
    };
    if (dates != null) {
      data['dates'] = dates!.toJson();
    }
    return data;
  }
}
