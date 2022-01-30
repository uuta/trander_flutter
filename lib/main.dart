import '/import.dart';
import 'pages/progresses/scaffold_progress_page.dart';

Future<void> main() async {
  await dotenv.load(fileName: "assets/.env");

  runApp(const ProviderScope(
    child: App(),
  ));
}

class App extends HookConsumerWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final auth0State = ref.watch(auth0NotifierProvider);
    final auth0Notifier = ref.watch(auth0NotifierProvider.notifier);

    useEffect(() {
      Future.microtask(() async {
        auth0Notifier.initAction();
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
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Color(0xff3316F2),
          foregroundColor: Colors.white,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          titleTextStyle: TextStyle(
            color: Color(0xff3316F2),
          ),
          iconTheme: IconThemeData(color: Colors.grey),
        ),
        inputDecorationTheme: InputDecorationTheme(
            filled: false,
            fillColor: Colors.white,
            contentPadding: const EdgeInsets.symmetric(vertical: 15),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
                borderSide: BorderSide.none)),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: Colors.grey[200],
            onPrimary: const Color(0xff22332E),
          ),
        ),
        textTheme: ThemeData.light().textTheme.copyWith(
              headline1: const TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 28,
                  color: Color(0xff22332E),
                  fontWeight: FontWeight.w500),
              headline2: const TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 24,
                  color: Color(0xff22332E),
                  fontWeight: FontWeight.w500),
              headline4: const TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 22,
                  color: Color(0xff22332E),
                  fontWeight: FontWeight.w500),
              headline5: const TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 20,
                  color: Color(0xff22332E),
                  fontWeight: FontWeight.w500),
              headline6: const TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 18,
                  color: Color(0xff22332E),
                  fontWeight: FontWeight.w500),
              bodyText1: const TextStyle(
                color: Color(0xff22332E),
              ),
              bodyText2: TextStyle(
                color: Colors.grey[600],
                fontSize: 16,
              ),
            ),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Color(0xff3316F2),
          foregroundColor: Colors.white,
        ),
      ),
      themeMode: ThemeMode.light,
      home: auth0State.isBusy
          ? const ScaffoldProgressPage()
          : auth0State.isLoggedIn
              ? const IndexPage()
              : const OnBoardingPage(),
    );
  }
}
