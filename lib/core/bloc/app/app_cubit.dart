import 'package:bloc/bloc.dart';
import 'package:portofolio/core/bloc/app/app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(const AppState.initial());
}
