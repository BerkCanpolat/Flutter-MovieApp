import 'package:envied/envied.dart';
import 'package:gen/src/environment/app_configuration.dart';

part 'dev_env.g.dart';

@Envied(obfuscate: true, path: 'assets/env/.devv.env')
final class DevEnv implements AppConfiguration{

  @EnviedField(varName: 'BASE_URL')
  static final String _baseUrl = _DevEnv._baseUrl;

  @EnviedField(varName: 'API_KEY')
  static final String _apiKey = _DevEnv._apiKey;

  @EnviedField(varName: 'SEARCH_API')
  static final String _searchApi = _DevEnv._searchApi;



  @override
  // TODO: implement apiKey
  String get apiKey => _apiKey;

  @override
  // TODO: implement baseUrl
  String get baseUrl => _baseUrl;
  
  @override
  // TODO: implement searchApi
  String get searchApi => _searchApi;
}