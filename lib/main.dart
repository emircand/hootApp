import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_infinite_list/app.dart';
import 'package:flutter_infinite_list/simple_bloc_observer.dart';

/*added libs @emircand*/
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

/* changed by emircand
void main() {
  Bloc.observer = SimpleBlocObserver();
  runApp(App());
}*/

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  Bloc.observer = SimpleBlocObserver();
  runApp(App());
}