import '/import.dart';
import 'pages/on_boarding_page.dart';
import 'pages/index_page.dart';
import '/views/progresses/scaffold_progress.dart';

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
      ),
      home: auth0State.isBusy
          ? const ScaffoldProgress()
          : auth0State.isLoggedIn
              ? const IndexPage()
              : const OnBoardingPage(),
    );
  }
}
