import 'package:bloc/bloc.dart';
import 'package:flutter_movieapp/product/state/language_bloc/lang_state.dart';
import 'package:flutter_movieapp/product/utility/constants/enums/locales_enums.dart';

class LanguageCubit extends Cubit<LanguageState> {
  LanguageCubit() : super(LanguageState(locale: LocalesEnums.tr.locale));

  void updateLanguage(LocalesEnums localeEnum) {
    emit(state.copyWith(locale: localeEnum.locale));
  }
}
