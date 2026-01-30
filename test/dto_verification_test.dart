import 'dart:convert';
import 'dart:io';
import 'package:flutter_movie/data/dto/movie_response_dto.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Movie DTO Verification', () {
    test('Parse now_playing_sample.json', () async {
      final file = File('test/now_playing_sample.json');
      final jsonString = await file.readAsString();
      final jsonMap = jsonDecode(jsonString);
      final dto = MovieResponseDto.fromJson(jsonMap);

      expect(dto.page, 1);
      expect(dto.dates, isNotNull);
      expect(dto.results, isNotEmpty);
      expect(dto.results.first.title, '포풍추영');
    });

    test('Parse popular_sample.json', () async {
      final file = File('test/popular_sample.json');
      final jsonString = await file.readAsString();
      final jsonMap = jsonDecode(jsonString);
      final dto = MovieResponseDto.fromJson(jsonMap);

      expect(dto.page, 1);
      expect(dto.dates, isNull); // Popular usually doesn't have dates
      expect(dto.results, isNotEmpty);
      expect(dto.results.first.title, '주토피아 2');
    });

    test('Parse top_rated_sample.json', () async {
      final file = File('test/top_rated_sample.json');
      final jsonString = await file.readAsString();
      final jsonMap = jsonDecode(jsonString);
      final dto = MovieResponseDto.fromJson(jsonMap);

      expect(dto.page, 1);
      expect(dto.dates, isNull);
      expect(dto.results, isNotEmpty);
      expect(dto.results.first.title, '쇼생크 탈출');
    });

    test('Parse upcoming_sample.json', () async {
      final file = File('test/upcoming_sample.json');
      final jsonString = await file.readAsString();
      final jsonMap = jsonDecode(jsonString);
      final dto = MovieResponseDto.fromJson(jsonMap);

      expect(dto.page, 1);
      expect(dto.dates, isNotNull);
      expect(dto.results, isNotEmpty);
      expect(dto.results.first.title, '그린랜드 2');
    });
  });
}
