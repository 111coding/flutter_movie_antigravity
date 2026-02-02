import 'dart:convert';
import 'package:flutter_movie/data/source/movie_data_source.dart';
import 'package:http/http.dart' as http;
import '../dto/movie_dto.dart';
import '../dto/movie_response_dto.dart';

class TmdbDataSource implements MovieDataSource {
  static const String _baseUrl = 'https://api.themoviedb.org/3/movie';
  // Note: Ideally, this token should be stored securely (e.g., .env),
  // but for this task, we'll keep it here as per instructions to follow CURL.md directly.
  static const String _accessToken =
      'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIwYmNiNzJjNzQ4N2U1N2QxNDdiNDk3Mjg3MTlmZDE5ZiIsIm5iZiI6MTczMzM5MTMxNy45NzUwMDAxLCJzdWIiOiI2NzUxNzNkNThhZjZkM2ZlYjNhZmU0NDUiLCJzY29wZXMiOlsiYXBpX3JlYWQiXSwidmVyc2lvbiI6MX0.xwBAH8_W-yBA3RoH9JscnBQe_1McKgodxi1JO-kcJn8';

  final http.Client _client;

  TmdbDataSource({http.Client? client}) : _client = client ?? http.Client();

  Map<String, String> get _headers => {
    'Authorization': 'Bearer $_accessToken',
    'accept': 'application/json',
  };

  @override
  Future<MovieResponseDto> getNowPlaying() async {
    final response = await _client.get(
      Uri.parse('$_baseUrl/now_playing?language=ko-KR&page=1'),
      headers: _headers,
    );

    if (response.statusCode == 200) {
      return MovieResponseDto.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load now playing movies');
    }
  }

  @override
  Future<MovieResponseDto> getPopular() async {
    final response = await _client.get(
      Uri.parse('$_baseUrl/popular?language=ko-KR&page=1'),
      headers: _headers,
    );

    if (response.statusCode == 200) {
      return MovieResponseDto.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load popular movies');
    }
  }

  @override
  Future<MovieResponseDto> getTopRated() async {
    final response = await _client.get(
      Uri.parse('$_baseUrl/top_rated?language=ko-KR&page=1'),
      headers: _headers,
    );

    if (response.statusCode == 200) {
      return MovieResponseDto.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load top rated movies');
    }
  }

  @override
  Future<MovieResponseDto> getUpcoming() async {
    final response = await _client.get(
      Uri.parse('$_baseUrl/upcoming?language=ko-KR&page=1'),
      headers: _headers,
    );

    if (response.statusCode == 200) {
      return MovieResponseDto.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load upcoming movies');
    }
  }

  @override
  Future<MovieDto> getMovieDetail(int movieId) async {
    final response = await _client.get(
      Uri.parse('$_baseUrl/$movieId?language=ko-KR'),
      headers: _headers,
    );

    if (response.statusCode == 200) {
      return MovieDto.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load movie detail');
    }
  }
}
