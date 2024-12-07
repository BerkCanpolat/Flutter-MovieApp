import 'package:flutter_movieapp/product/service/interface/movie_IService.dart';
import 'package:flutter_movieapp/product/service/manager/app_service_path_enums.dart';
import 'package:gen/gen.dart';
import 'package:vexana/vexana.dart';

final class MovieGetService extends MovieIservice{

  MovieGetService(INetworkManager<EmptyModel> movieServiceManager) : _manager = movieServiceManager;
  final INetworkManager<EmptyModel> _manager;

  @override
  Future<MovieModel?> getMovieNowPlaying() async {
    final response = await _manager.send<MovieModel, MovieModel?>(
      AppServicePathEnums.nowPlaying.value, 
      parseModel: MovieModel(), 
      method: RequestType.GET
    );

    print("API Response: ${response.data}"); // Yanıtı yazdırın
  if (response.error != null) {
    print("API Error: ${response.error}");
    print("Error details: ${response.error?.toString()}");
  }

    return response.data;
  }
  
  @override
  Future<TvSeriesModel?> getTvTopRated() async {
    final response = await _manager.send<TvSeriesModel, TvSeriesModel?>(
      AppServicePathEnums.tvTopRated.value, 
      parseModel: TvSeriesModel(), 
      method: RequestType.GET
    );
    return response.data;
  }
  
  @override
  Future<MovieModel?> getMovieTopRated() async {
    final response = await _manager.send<MovieModel, MovieModel?>(
      AppServicePathEnums.movieTopRated.value,
      parseModel: MovieModel(), 
      method: RequestType.GET,      
    );
    print("API Response: ${response.data}");
  if (response.error != null) {
    print("API Error: ${response.error}");
  }
    return response.data;
  }
  
  @override
  Future<MovieDetailed?> getMovieDetails(int id) async {
    final response = await _manager.send<MovieDetailed, MovieDetailed?>(
      AppServicePathEnums.movieDetails.withId(id), 
      parseModel: MovieDetailed(), 
      method: RequestType.GET
    );

    return response.data;
   }
    
      @override
      Future<MovieRecommendation?> getMovieRecom(int id) async {
        final response = await _manager.send(
          AppServicePathEnums.movieRecom.withIdAndPath(id), 
          parseModel: MovieRecommendation(), 
          method: RequestType.GET
        );
        return response.data;
      }
}