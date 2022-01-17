import '/import.dart';
import '/views/atoms/buttons/image_circle_view.dart';

class SucceedDialogView extends StatelessWidget {
  final String title, buttonText;
  final String? name, countryCode;
  final Image leftIcon, centerIcon, rightIcon;
  final Function()? leftOnPressed,
      centerOnPressed,
      rightOnPressed,
      closeOnPressed;

  const SucceedDialogView(
      {Key? key,
      required this.title,
      required this.buttonText,
      this.name,
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
            color: Colors.white,
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
              Text(title, style: HeaderStyles.header2()),
              const SizedBox(height: 16.0),
              Text.rich(
                TextSpan(
                  style: HeaderStyles.header4(),
                  children: [
                    WidgetSpan(
                        alignment: PlaceholderAlignment.middle,
                        child: Container(
                            padding: const EdgeInsets.only(right: 10),
                            child: Material(
                              elevation: 3,
                              child: (countryCode != null)
                                  ? Image.network(
                                      'https://flagcdn.com/32x24/$countryCode.png')
                                  : const Text(''),
                            ))),
                    TextSpan(
                      text: UtilService.shortenStr(name, max: 40),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 15.0),
              Row(
                children: [
                  const Spacer(),
                  ImageCircleView(
                      image: leftIcon,
                      iconColor: Colors.white,
                      onPressed: leftOnPressed),
                  const Spacer(),
                  ImageCircleView(
                      image: centerIcon,
                      iconColor: Colors.white,
                      onPressed: centerOnPressed),
                  const Spacer(),
                  ImageCircleView(
                      image: rightIcon,
                      iconColor: Colors.white,
                      onPressed: rightOnPressed),
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
            backgroundColor: Color(0xFF2cb696),
            radius: avatarRadius,
          ),
        ),
      ]),
    );
  }
}
