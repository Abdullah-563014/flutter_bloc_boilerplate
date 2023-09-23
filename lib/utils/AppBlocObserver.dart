import 'package:age_calculator/utils/commons.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



class AppBlocObserver extends BlocObserver {


  @override
  void onCreate(BlocBase<dynamic> bloc) {
    Commons.showLog("==============bloc observer: ${bloc?.toString()} bloc created===================");
  }

  @override
  void onClose(BlocBase<dynamic> bloc) {
    Commons.showLog("==============bloc observer: ${bloc?.toString()} bloc close===================");
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    Commons.showLog("==============bloc observer: ${bloc?.toString()} bloc error===================");
    print(error);
  }

  @override
  void onTransition(Bloc<dynamic, dynamic> bloc, Transition<dynamic, dynamic> transition) {
    Commons.showLog("==============bloc observer: ${bloc?.toString()} bloc transition===================");
  }

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    Commons.showLog("==============bloc observer: ${bloc?.toString()} bloc change===================");
  }

  @override
  void onEvent(Bloc<dynamic, dynamic> bloc, Object? event) {
    Commons.showLog("==============bloc observer: ${bloc?.toString()} bloc event fired===================");
  }
}