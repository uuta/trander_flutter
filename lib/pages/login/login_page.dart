import '/import.dart';
import '/views/molecules/columns/title_caption_view.dart';
import '/views/atoms/buttons/fullsize_icon_text_button_view.dart';

class LoginPage extends HookConsumerWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final supabaseNotifier = ref.watch(supabaseNotifierProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: Image.asset("assets/images/icons/logo.png", width: 160),
      ),
      backgroundColor: Colors.grey[900],
      body: Center(
          child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Stack(children: [
                Center(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                      const SizedBox(height: 30),
                      const TitleCaptionView(
                        title: 'Let\'s get started!',
                        caption: 'Dive into Trander – Login to Begin',
                      ),
                      const SizedBox(height: 20),
                      Image.asset(
                        'assets/images/stories/healthy-food-amico.png',
                        width: 250,
                      ),
                      const SizedBox(height: 40),
                      SizedBox(
                          height: 45,
                          width: 250,
                          child: FractionallySizedBox(
                              widthFactor: 0.95,
                              child: FullsizeIconTextButtonView(
                                  icon: Image.asset(
                                      "assets/images/other-logos/google.png",
                                      width: 20),
                                  text: 'Login with Google',
                                  radius: 30.0,
                                  onPressed: supabaseNotifier.googleSignInFn))),
                      const SizedBox(height: 30),
                      Text(
                          'Trander is an app that suggests random locations around the world. Some features require access to your current location.',
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.bodyMedium),
                    ]))
              ]))),
    );
  }
}
