import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

popup(
  BuildContext context, {
  String? title,
  String? confirmText,
  void Function()? onConfirm,
  Widget? body,
  bool showActions = true,
}) {
  showDialog(
    context: context,
    builder: (context) => Platform.isIOS
        ? CupertinoAlertDialog(
            title: title != null ? Text(title) : null,
            content: body,
            actions: !showActions
                ? []
                : [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text(
                        'Cancel',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    TextButton(
                      onPressed: onConfirm,
                      child: Text(
                        confirmText ?? 'Confirm',
                      ),
                    ),
                  ],
          )
        : AlertDialog(
            title: title != null ? Text(title) : null,
            content: body,
            actions: !showActions
                ? null
                : [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text(
                        'Cancel',
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                    TextButton(
                      onPressed: onConfirm,
                      child: Text(
                        confirmText ?? 'Confirm',
                      ),
                    ),
                  ],
          ),
  );
}
