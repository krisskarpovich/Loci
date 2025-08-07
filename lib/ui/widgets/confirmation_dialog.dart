import 'package:flutter/material.dart';
import 'package:loci/theme/extensions/theme_extention.dart';

class ConfirmationDialogs {
  static Future<void> confirmDelete({
    required BuildContext context,
    required void Function() onConfirm,
  }) => showConfirmationDialog(
    context: context,
    title: 'Удалить данные?',
    onConfirm: () {
      onConfirm();
      _closeDialog(context);
    },
  );

  static Future<void> confirmPop({
    required BuildContext context,
    required void Function() onConfirm,
  }) => showConfirmationDialog(
    context: context,
    title: 'Вы уверены, что хотите выполнить данное действие?',
    onConfirm: () {
      _closeDialog(context);
      onConfirm();
    },
  );

  static Future<void> showConfirmationDialog({
    required BuildContext context,
    required String title,
    String? confirmButtonName,
    String? cancelButtonName,
    required void Function() onConfirm,
  }) {
    return showAdaptiveDialog(
      context: context,
      useRootNavigator: true,
      builder: (_) => _ConfirmationDialog(
        title: title,
        cancelButtonName: cancelButtonName ?? 'Нет',
        onCancel: () => _closeDialog(context),
        confirmButtonName: confirmButtonName ?? 'Да',
        onConfirm: onConfirm,
      ),
    );
  }

  static void _closeDialog(BuildContext context) =>
      Navigator.of(context, rootNavigator: true).pop();
}

class _ConfirmationDialog extends StatelessWidget {
  const _ConfirmationDialog({
    required this.title,
    required this.cancelButtonName,
    required this.onCancel,
    required this.confirmButtonName,
    required this.onConfirm,
  });

  final String title;

  final String cancelButtonName;
  final void Function() onCancel;

  final String confirmButtonName;
  final void Function() onConfirm;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      title: Text(title),
      actions: [
        _ActionButton(text: cancelButtonName, onTap: onCancel),
        _ActionButton(text: confirmButtonName, onTap: onConfirm),
      ],
    );
  }
}

class _ActionButton extends StatelessWidget {
  const _ActionButton({required this.text, required this.onTap});

  final String text;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(8)),
      child: Material(
        type: MaterialType.transparency,
        child: InkWell(
          onTap: onTap,
          child: Ink(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text(
              text,
              style: TextStyle(color: context.colorScheme.primary),
            ),
          ),
        ),
      ),
    );
  }
}
