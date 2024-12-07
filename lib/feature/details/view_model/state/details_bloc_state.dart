import 'package:equatable/equatable.dart';
import 'package:gen/gen.dart';

final class DetailsBlocState extends Equatable{
  final bool isLoading;
  final MovieDetailed? movieDetailed;

  const DetailsBlocState({required this.isLoading, this.movieDetailed});

  DetailsBlocState copyWith({
    bool? isLoading,
    MovieDetailed? movieDetailed
  }) {
    return DetailsBlocState(
      isLoading: isLoading ?? this.isLoading,
      movieDetailed: movieDetailed ?? this.movieDetailed
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [isLoading,movieDetailed];
}