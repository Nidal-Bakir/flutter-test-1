import 'package:flutter/material.dart';

void showErrorSnackBar(BuildContext context, String content) {
  _showSnackBar(context, content, true);
}

void showSuccessSnackBar(BuildContext context, String content) {
  _showSnackBar(context, content, false);
}

void _showSnackBar(BuildContext context, String content, bool forError) {
  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(
      SnackBar(
        backgroundColor: forError
            ? Theme.of(context).colorScheme.error
            : const Color(0xFF68b467),
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
        duration: const Duration(seconds: 3),
        content: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    forError ? Icons.error_rounded : Icons.check_circle_rounded,
                    color: Theme.of(context).colorScheme.surface,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Flexible(
                    child: Text(
                      content,
                      softWrap: true,
                    ),
                  ),
                ],
              ),
            ),
            IconButton(
              padding: EdgeInsets.zero,
              color: Theme.of(context).colorScheme.surface,
              visualDensity: VisualDensity.compact,
              onPressed: () {
                ScaffoldMessenger.maybeOf(context)?.hideCurrentSnackBar();
              },
              icon: const Icon(
                Icons.close_rounded,
              ),
            )
          ],
        ),
      ),
    );
}
