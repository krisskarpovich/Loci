import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {
  final Widget child;
  final VoidCallback? onPressed;
  final VoidCallback? onLongPress;
  final bool enabled;
  final bool isLoading;
  final Color? color;

  const SecondaryButton.custom({
    super.key,
    required this.child,
    this.onPressed,
    this.onLongPress,
    this.isLoading = false,
    this.enabled = true,
    this.color,
  });

  SecondaryButton({
    super.key,
    required String text,
    IconData? icon,
    this.onPressed,
    this.onLongPress,
    this.isLoading = false,
    this.enabled = true,
    this.color,
  }) : child = _IconWithTextChild(text: text, icon: icon);

  @override
  Widget build(BuildContext context) {
    const Duration animDuration = Duration(milliseconds: 300);

    const BorderRadius borderRadius = BorderRadius.all(Radius.circular(16));

    final Color filledColor = switch (enabled) {
      true => color ?? Color.fromARGB(255, 255, 255, 255),
      false => Theme.of(context).disabledColor,
    };

    final Widget progressIndicator = SizedBox.square(
      dimension: 23,
      child: CircularProgressIndicator(
        color: Color.fromARGB(255, 128, 98, 248),
        strokeWidth: 2,
      ),
    );

    final Widget content = switch (isLoading) {
      true => progressIndicator,
      false => child,
    };

    return ConstrainedBox(
      constraints: BoxConstraints(minHeight: 56),
      child: IgnorePointer(
        ignoring: !enabled || isLoading,
        child: AnimatedOpacity(
          duration: animDuration,
          opacity: enabled ? 1 : 0.5,
          child: Material(
            type: MaterialType.transparency,
            child: InkWell(
              borderRadius: borderRadius,
              onTap: onPressed,
              onLongPress: onLongPress,
              child: Ink(
                decoration: BoxDecoration(
                  borderRadius: borderRadius,
                  color: filledColor,
                ),
                padding: const EdgeInsets.all(16),
                child: DefaultTextStyle(
                  style: TextStyle(),
                  child: IconTheme(
                    data: IconThemeData(size: 24, color: Colors.amber),
                    child: Center(child: content),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _IconWithTextChild extends StatelessWidget {
  final String text;
  final IconData? icon;

  const _IconWithTextChild({required this.text, this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(child: Text(text)),
        if (icon != null)
          Padding(padding: const EdgeInsets.only(left: 8), child: Icon(icon)),
      ],
    );
  }
}
