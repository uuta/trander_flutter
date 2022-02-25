import '/import.dart';
import '/views/atoms/buttons/image_circle_button_view.dart';
import '/views/atoms/texts/shadow_icon_text_view.dart';

class SucceedDialogView extends StatelessWidget {
  final String name, title, buttonText;
  final String? countryCode;
  final Widget? image;
  final Image leftIcon, centerIcon, rightIcon;
  final Function()? leftOnPressed,
      centerOnPressed,
      rightOnPressed,
      closeOnPressed;

  const SucceedDialogView(
      {Key? key,
      required this.title,
      required this.buttonText,
      required this.name,
      this.image,
      this.countryCode,
      required this.leftIcon,
      required this.centerIcon,
      required this.rightIcon,
      required this.leftOnPressed,
      required this.centerOnPressed,
      required this.rightOnPressed,
      required this.closeOnPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double padding = 16.0;
    const double avatarRadius = 45.0;

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
                style: Theme.of(context).textTheme.headline2,
              ),
              const SizedBox(height: 16.0),
              Text.rich(
                TextSpan(
                  style: Theme.of(context).textTheme.headline6,
                  children: [
                    WidgetSpan(
                        alignment: PlaceholderAlignment.middle,
                        child: Container(
                          padding: const EdgeInsets.only(right: 10),
                          child: (image != null)
                              ? ShadowIconTextView(
                                  name: name,
                                  icon: image,
                                )
                              : Text(
                                  name,
                                  style: Theme.of(context).textTheme.headline5,
                                ),
                        )),
                  ],
                ),
              ),
              const SizedBox(height: 15.0),
              Row(
                children: [
                  const Spacer(),
                  ImageCircleButtonView(
                      image: leftIcon, onPressed: leftOnPressed),
                  const Spacer(),
                  ImageCircleButtonView(
                      image: centerIcon, onPressed: centerOnPressed),
                  const Spacer(),
                  ImageCircleButtonView(
                      image: rightIcon, onPressed: rightOnPressed),
                  const Spacer(),
                ],
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
        const Positioned(
          left: padding,
          right: padding,
          child: CircleAvatar(
            child: Icon(Icons.check, size: avatarRadius, color: Colors.white),
            backgroundColor: Color(0xff7ecc00),
            radius: avatarRadius,
          ),
        ),
      ]),
    );
  }
}
