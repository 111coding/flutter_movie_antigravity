# TMDB API CURL 명령어 모음

## 1. 현재 상영중 (Now Playing)
문서: https://developer.themoviedb.org/reference/movie-now-playing-list

```bash
curl --request GET \
     --url 'https://api.themoviedb.org/3/movie/now_playing?language=ko-KR&page=1' \
     --header 'Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIwYmNiNzJjNzQ4N2U1N2QxNDdiNDk3Mjg3MTlmZDE5ZiIsIm5iZiI6MTczMzM5MTMxNy45NzUwMDAxLCJzdWIiOiI2NzUxNzNkNThhZjZkM2ZlYjNhZmU0NDUiLCJzY29wZXMiOlsiYXBpX3JlYWQiXSwidmVyc2lvbiI6MX0.xwBAH8_W-yBA3RoH9JscnBQe_1McKgodxi1JO-kcJn8' \
     --header 'accept: application/json'
```

## 2. 인기순 (Popular)
문서: https://developer.themoviedb.org/reference/movie-popular-list

```bash
curl --request GET \
     --url 'https://api.themoviedb.org/3/movie/popular?language=ko-KR&page=1' \
     --header 'Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIwYmNiNzJjNzQ4N2U1N2QxNDdiNDk3Mjg3MTlmZDE5ZiIsIm5iZiI6MTczMzM5MTMxNy45NzUwMDAxLCJzdWIiOiI2NzUxNzNkNThhZjZkM2ZlYjNhZmU0NDUiLCJzY29wZXMiOlsiYXBpX3JlYWQiXSwidmVyc2lvbiI6MX0.xwBAH8_W-yBA3RoH9JscnBQe_1McKgodxi1JO-kcJn8' \
     --header 'accept: application/json'
```

## 3. 평점 높은순 (Top Rated)
문서: https://developer.themoviedb.org/reference/movie-top-rated-list

```bash
curl --request GET \
     --url 'https://api.themoviedb.org/3/movie/top_rated?language=ko-KR&page=1' \
     --header 'Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIwYmNiNzJjNzQ4N2U1N2QxNDdiNDk3Mjg3MTlmZDE5ZiIsIm5iZiI6MTczMzM5MTMxNy45NzUwMDAxLCJzdWIiOiI2NzUxNzNkNThhZjZkM2ZlYjNhZmU0NDUiLCJzY29wZXMiOlsiYXBpX3JlYWQiXSwidmVyc2lvbiI6MX0.xwBAH8_W-yBA3RoH9JscnBQe_1McKgodxi1JO-kcJn8' \
     --header 'accept: application/json'
```

## 4. 개봉 예정 (Upcoming)
문서: https://developer.themoviedb.org/reference/movie-upcoming-list

```bash
curl --request GET \
     --url 'https://api.themoviedb.org/3/movie/upcoming?language=ko-KR&page=1' \
     --header 'Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIwYmNiNzJjNzQ4N2U1N2QxNDdiNDk3Mjg3MTlmZDE5ZiIsIm5iZiI6MTczMzM5MTMxNy45NzUwMDAxLCJzdWIiOiI2NzUxNzNkNThhZjZkM2ZlYjNhZmU0NDUiLCJzY29wZXMiOlsiYXBpX3JlYWQiXSwidmVyc2lvbiI6MX0.xwBAH8_W-yBA3RoH9JscnBQe_1McKgodxi1JO-kcJn8' \
     --header 'accept: application/json'
```

## 5. 영화 상세 정보 (Movie Details)
문서: https://developer.themoviedb.org/reference/movie-details
Note: `{movie_id}` 부분을 실제 영화 ID (예: 550)로 변경해서 사용하세요.

```bash
curl --request GET \
     --url 'https://api.themoviedb.org/3/movie/{movie_id}?language=ko-KR' \
     --header 'Authorization: Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIwYmNiNzJjNzQ4N2U1N2QxNDdiNDk3Mjg3MTlmZDE5ZiIsIm5iZiI6MTczMzM5MTMxNy45NzUwMDAxLCJzdWIiOiI2NzUxNzNkNThhZjZkM2ZlYjNhZmU0NDUiLCJzY29wZXMiOlsiYXBpX3JlYWQiXSwidmVyc2lvbiI6MX0.xwBAH8_W-yBA3RoH9JscnBQe_1McKgodxi1JO-kcJn8' \
     --header 'accept: application/json'
```
