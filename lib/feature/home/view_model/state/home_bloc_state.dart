import 'package:equatable/equatable.dart';
import 'package:gen/gen.dart';

final class HomeBlocState extends Equatable{
  final bool isLoading;
  final MovieNowPlayingModel? movieNow;

  const HomeBlocState({required this.isLoading, this.movieNow});

  HomeBlocState copyWith({
    bool? isLoading,
    MovieNowPlayingModel? movieNow
  }) {
    return HomeBlocState(
      isLoading: isLoading ?? this.isLoading,
      movieNow: movieNow ?? this.movieNow
    );

  }
  @override
  // TODO: implement props
  List<Object?> get props => [isLoading, movieNow];
}