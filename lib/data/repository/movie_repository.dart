import '../../domain/entity/movie_entity.dart';
import '../dto/movie_dto.dart';
import '../source/tmdb_data_source.dart';

class MovieRepository {
  final TmdbDataSource _tmdbDataSource;

  MovieRepository({TmdbDataSource? tmdbDataSource})
    : _tmdbDataSource = tmdbDataSource ?? TmdbDataSource();

  Future<List<MovieEntity>> getNowPlaying() async {
    final response = await _tmdbDataSource.getNowPlaying();
    return response.results.map(_mapToEntity).toList();
  }

  Future<List<MovieEntity>> getPopular() async {
    final response = await _tmdbDataSource.getPopular();
    return response.results.map(_mapToEntity).toList();
  }

  Future<List<MovieEntity>> getTopRated() async {
    final response = await _tmdbDataSource.getTopRated();
    return response.results.map(_mapToEntity).toList();
  }

  Future<List<MovieEntity>> getUpcoming() async {
    final response = await _tmdbDataSource.getUpcoming();
    return response.results.map(_mapToEntity).toList();
  }

  Future<MovieEntity> getMovieDetail(int movieId) async {
    final dto = await _tmdbDataSource.getMovieDetail(movieId);
    return _mapToEntity(dto);
  }

  MovieEntity _mapToEntity(MovieDto dto) {
    return MovieEntity(id: dto.id, posterPath: dto.posterPath);
  }
}
