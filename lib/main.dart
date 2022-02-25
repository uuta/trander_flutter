import '/import.dart';
import '/environment.dart';
import 'pages/progresses/scaffold_progress_page.dart';

Future<void> main() async {
  // Environement configuration
  await Environment.setup();

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
        primaryColor: const Color(0xff9dff00),
        primaryColorLight: const Color(0xfffd026f),
        primaryTextTheme:
            const TextTheme(bodyText2: TextStyle(color: Color(0xff5c6360))),
        disabledColor: const Color(0xff9b9b9b),
        fontFamily: 'Arial',
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Color(0xff9dff00),
          foregroundColor: Color(0xfffd026f),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          titleTextStyle: TextStyle(
            color: Color(0xff3316F2),
          ),
          iconTheme: IconThemeData(color: Colors.grey),
        ),
        scaffoldBackgroundColor: const Color(0xfffd026f),
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
        primaryColor: const Color(0xff9dff00),
        primaryColorLight: const Color(0xfffd026f),
        primaryTextTheme:
            const TextTheme(bodyText2: TextStyle(color: Color(0xff5c6360))),
        disabledColor: const Color(0xff9b9b9b),
        fontFamily: 'Arial',
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Color(0xfffd026f),
          foregroundColor: Color(0xff9dff00),
        ),
        appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(
            color: Color(0xff3316F2),
          ),
          iconTheme: IconThemeData(color: Colors.grey),
        ),
        // scaffoldBackgroundColor: const Color(0xfffd026f),
        inputDecorationTheme: InputDecorationTheme(
            filled: false,
            contentPadding: const EdgeInsets.symmetric(vertical: 15),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
                borderSide: BorderSide.none)),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: Colors.grey[700],
            onPrimary: const Color(0xff22332E),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
            style: ButtonStyle(
                foregroundColor:
                    MaterialStateProperty.all(const Color(0xfffd026f)))),
        textTheme: ThemeData.dark().textTheme.copyWith(
              headline1: const TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 28,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
              headline2: const TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
              headline3: const TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 24,
                  color: Color(0xff9dff00),
                  fontWeight: FontWeight.w500),
              headline4: const TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
              headline5: const TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w500),
              headline6: const TextStyle(
                  fontFamily: 'Arial',
                  fontSize: 18,
                  color: Colors.white,
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
      themeMode: ThemeMode.dark,
      home: auth0State.isBusy
          ? const ScaffoldProgressPage()
          : auth0State.isLoggedIn
              ? const IndexPage()
              : const OnBoardingPage(),
    );
  }
}
