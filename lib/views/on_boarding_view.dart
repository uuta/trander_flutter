import '/import.dart';
import 'package:introduction_screen/introduction_screen.dart';
import '/views/slides.dart';
import '/models/controllers/auth0/auth0_controller.dart';

class OnBoardingView extends HookConsumerWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Slides slides = Slides();
    return Scaffold(
      appBar: AppBar(
          title: Image.asset("assets/images/icons/logo.png", width: 200),
          backgroundColor: Colors.white),
      body: IntroductionScreen(
        globalBackgroundColor: Colors.white,
        pages: slides.generateSlides(),
        showNextButton: true,
        showSkipButton: false,
        doneColor: Theme.of(context).primaryColorLight,
        nextColor: Theme.of(context).primaryColorLight,
        dotsDecorator:
            DotsDecorator(activeColor: Theme.of(context).primaryColorLight),
        skip: const Text("Skip"),
        next: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              border: Border.all(
                  color: Theme.of(context).primaryColorLight, width: 2)),
          child: Center(
            child: Icon(
              Icons.navigate_next,
              size: 30,
              color: Theme.of(context).primaryColorLight,
            ),
          ),
        ),
        done: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(40),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 40,
                    offset: const Offset(4, 4))
              ]),
          child: const Center(
            child: Icon(
              Icons.done,
              size: 30,
              color: Colors.white,
            ),
          ),
        ),
        onDone: () {
          ref.read(auth0NotifierProvider.notifier).login();
        },
      ),
    );
  }
}
