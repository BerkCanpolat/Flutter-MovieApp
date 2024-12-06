import 'package:flutter_movieapp/product/service/interface/search_IService.dart';
import 'package:flutter_movieapp/product/service/manager/app_service_path_enums.dart';
import 'package:flutter_movieapp/product/utility/constants/enums/environment_enums.dart';
import 'package:gen/src/model/movie_model.dart';
import 'package:gen/src/model/search_movie_model.dart';
import 'package:vexana/vexana.dart';

final class SearchService extends SearchIservice{
  SearchService(INetworkManager<EmptyModel> searchmanager) : _searchManager = searchmanager;
  final INetworkManager<EmptyModel> _searchManager;


  @override
  Future<SearchMovieModel?> getSearch(String text) async {
    print("Servis çağrıldı: query = $text");
    final response = await _searchManager.send<SearchMovieModel, SearchMovieModel?>(
      AppServicePathEnums.movieSearch.value, 
      parseModel: SearchMovieModel(), 
      method: RequestType.GET,
      options: Options(headers: {'Authorization': 'Bearer eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI2ZDU5MDA2NmE0MzRkODZjNjYxYjRlYTA3ZmE2MThlOCIsIm5iZiI6MTczMjQ0NjI5MS4zOTM4MDMxLCJzdWIiOiI2NzQzMDM0YzgzMTU4YjBiMjY0N2JiYjQiLCJzY29wZXMiOlsiYXBpX3JlYWQiXSwidmVyc2lvbiI6MX0.LKYwzDJP9d5Ox-G5dPdTMVhRsTejaUjIYri0s4hGP7A'}),
      queryParameters: {
        'query': text
      }
    );
    return response.data;
  }

  @override
  Future<MovieModel?> denemeGet() async {
    final response = await _searchManager.send<MovieModel, MovieModel?>(
      AppServicePathEnums.movieTopRated.value, 
      parseModel: MovieModel(), 
      method: RequestType.GET,
      queryParameters: {
        'api_key': AppEnvironmentEnums.apiKey.value
      }
    );
    print("${response}");
    print(response.data);
    print('${AppEnvironmentEnums.apiKey.value}');
    print(denemeGet());
    return response.data;
  }
}