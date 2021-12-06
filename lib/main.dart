import '/import.dart';
import 'pages/on_boarding_page.dart';
import 'widgets/profile_widget.dart';
import '/models/controllers/auth0/auth0_controller.dart';

void main() {
  runApp(ProviderScope(
    child: App(),
  ));
}

class App extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final auth0State = ref.watch(auth0NotifierProvider);
    useEffect(() {
      Future.microtask(() async {
        ref.watch(auth0NotifierProvider.notifier).initAction();
      });
      return;
    }, const []);
    return MaterialApp(
        title: 'Trander',
        theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: const Color(0xff3316F2),
          primaryColorLight: const Color(0xff1CACBF),
          primaryTextTheme:
              const TextTheme(bodyText2: TextStyle(color: Color(0xff5c6360))),
          disabledColor: const Color(0xff9b9b9b),
          fontFamily: 'Arial',
        ),
        // home: const MainPage());
        home: Scaffold(
          appBar: AppBar(
              title: Image.asset("assets/images/icons/logo.png", width: 200),
              backgroundColor: Colors.white),
          body: Center(
            child: auth0State.isBusy
                ? const CircularProgressIndicator()
                : auth0State.isLoggedIn
                    ? const ProfileWidget()
                    : const OnBoardingPage(),
          ),
        ));
  }
}
