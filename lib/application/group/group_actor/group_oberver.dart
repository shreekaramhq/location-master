import 'package:flutter_bloc/flutter_bloc.dart';

class GroupObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    print(bloc.state);

    print(change);

    super.onChange(bloc, change);
  }
}
