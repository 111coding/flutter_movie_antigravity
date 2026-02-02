import 'package:flutter_movie/data/source/movie_data_source.dart';

import '../../domain/entity/movie_entity.dart';
import '../dto/movie_dto.dart';

class MovieRepository {
  final MovieDataSource _movieDataSource;

  MovieRepository({required MovieDataSource movieDataSource})
    : _movieDataSource = movieDataSource;

  Future<List<MovieEntity>> getNowPlaying() async {
    final response = await _movieDataSource.getNowPlaying();
    return response.results.map(_mapToEntity).toList();
  }

  Future<List<MovieEntity>> getPopular() async {
    final response = await _movieDataSource.getPopular();
    return response.results.map(_mapToEntity).toList();
  }

  Future<List<MovieEntity>> getTopRated() async {
    final response = await _movieDataSource.getTopRated();
    return response.results.map(_mapToEntity).toList();
  }

  Future<List<MovieEntity>> getUpcoming() async {
    final response = await _movieDataSource.getUpcoming();
    return response.results.map(_mapToEntity).toList();
  }

  Future<MovieEntity> getMovieDetail(int movieId) async {
    final dto = await _movieDataSource.getMovieDetail(movieId);
    return _mapToEntity(dto);
  }

  MovieEntity _mapToEntity(MovieDto dto) {
    return MovieEntity(id: dto.id, posterPath: dto.posterPath);
  }
}
