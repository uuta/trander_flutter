import '/import.dart';

class IdeaDialogView extends StatelessWidget {
  final String title, description, buttonText;
  final Function()? closeOnPressed;

  const IdeaDialogView(
      {Key? key,
      required this.title,
      required this.buttonText,
      required this.description,
      required this.closeOnPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double padding = 16.0;
    const double avatarRadius = 36.0;

    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(padding),
      ),
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      child: Stack(children: <Widget>[
        Container(
          padding: const EdgeInsets.only(
            top: avatarRadius + padding,
            bottom: padding,
            left: padding,
            right: padding,
          ),
          margin: const EdgeInsets.only(top: avatarRadius),
          decoration: BoxDecoration(
            color: Colors.grey[900],
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(padding),
            boxShadow: const [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
                offset: Offset(0.0, 10.0),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                title,
                style: Theme.of(context).textTheme.displayMedium!.copyWith(
                      color: Theme.of(context).primaryColor,
                    ),
              ),
              const SizedBox(height: 16.0),
              Text.rich(
                TextSpan(
                  style: Theme.of(context).textTheme.titleLarge,
                  children: [
                    WidgetSpan(
                        alignment: PlaceholderAlignment.middle,
                        child: Container(
                          padding: const EdgeInsets.only(right: 10),
                          child: Text(
                            description,
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(
                                  color: Colors.grey[600],
                                  height: 1.5,
                                ),
                          ),
                        )),
                  ],
                ),
              ),
              const SizedBox(height: 15.0),
              Align(
                alignment: Alignment.bottomRight,
                child: TextButton(
                  onPressed: closeOnPressed,
                  child: Text(buttonText),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          left: padding,
          right: padding,
          child: CircleAvatar(
            backgroundColor: const Color(0xffEBD14A),
            radius: avatarRadius,
            child: Icon(Icons.lightbulb_outline_rounded,
                size: avatarRadius, color: Colors.grey[600]),
          ),
        ),
      ]),
    );
  }
}
