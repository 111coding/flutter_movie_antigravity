/// 영화 정보를 담는 도메인 엔티티입니다.
///
/// UI에서 필요한 최소한의 정보인 id와 포스터 이미지만을 포함합니다.
class MovieEntity {
  final int id;
  final String? posterPath;

  const MovieEntity({required this.id, this.posterPath});
}
