import 'package:flutter_movie/data/dto/movie_dto.dart';
import 'package:flutter_movie/data/dto/movie_response_dto.dart';

abstract interface class MovieDataSource {
  Future<MovieResponseDto> getNowPlaying();
  Future<MovieResponseDto> getPopular();
  Future<MovieResponseDto> getTopRated();
  Future<MovieResponseDto> getUpcoming();
  Future<MovieDto> getMovieDetail(int movieId);
}
