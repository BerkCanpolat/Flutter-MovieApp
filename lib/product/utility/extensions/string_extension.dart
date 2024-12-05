import 'package:flutter_movieapp/product/utility/constants/app_constants/app_constants.dart';

/// If [$this] is not added, it cannot find the path to the image
/// Example; ↴
/// final imagePath = "poster.jpg";
/// print(imagePath.toMovieImage);
/// Çıktı: https://your-movie-api.com

/// But if [$this] is added, it finds the path to the image 
/// Example; ↴
/// final imagePath = "poster.jpg";
/// print(imagePath.toMovieImage); 
/// Output: https://your-movie-api.com/poster.jpg

// extension NetworkImagePathExtension on String? {
//   String get toMovieImage => '${AppConstants.movieImageUrl}$this';
// }

extension NetworkImagePathExtension on String? {
  String get toMovieImage =>
      this != null ? '${AppConstants.movieImageUrl}$this' : '';
}
