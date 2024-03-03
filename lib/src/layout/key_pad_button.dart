import 'package:flutter/cupertino.dart';
import 'package:flutter_screen_lock/src/configurations/key_pad_button_config.dart';

/// Button in a [KeyPad].
class KeyPadButton extends StatelessWidget {
  const KeyPadButton({
    super.key,
    this.child,
    required this.onPressed,
    this.onLongPress,
    KeyPadButtonConfig? config,
  }) : config = config ?? const KeyPadButtonConfig();

  factory KeyPadButton.transparent({
    Key? key,
    Widget? child,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    KeyPadButtonConfig? config,
  }) =>
      KeyPadButton(
        key: key,
        onPressed: onPressed,
        onLongPress: onLongPress,
        config: KeyPadButtonConfig(
          size: config?.size,
          fontSize: config?.fontSize,
          foregroundColor: config?.foregroundColor,
          backgroundColor: const Color(0x00000000),
        ),
        child: child,
      );

  final Widget? child;
  final VoidCallback? onPressed;
  final VoidCallback? onLongPress;
  final KeyPadButtonConfig config;

  @override
  Widget build(BuildContext context) {
    final color =
        child != null ? CupertinoColors.systemFill.resolveFrom(context) : null;

    return Container(
      height: config.size,
      width: config.size,
      margin: const EdgeInsets.all(10),
      child: CupertinoButton(
        padding: EdgeInsets.zero,
        borderRadius: BorderRadius.circular(150),
        color: color,
        onPressed: onPressed,
        child: child ?? const SizedBox.shrink(),
      ),
    );
  }
}
