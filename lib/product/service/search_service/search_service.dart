import 'package:flutter_movieapp/product/service/interface/search_IService.dart';
import 'package:flutter_movieapp/product/service/manager/app_service_path_enums.dart';
import 'package:flutter_movieapp/product/utility/constants/enums/environment_enums.dart';
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
      options: Options(headers: {'Authorization': AppEnvironmentEnums.searchApi.value}),
      queryParameters: {
        'query': text
      }
    );
    return response.data;
  }
}