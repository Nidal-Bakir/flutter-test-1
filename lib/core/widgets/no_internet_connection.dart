import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class NoInternetConnection extends StatelessWidget {
  final bool fullScreen;
  final VoidCallback onRetry;
  const NoInternetConnection({
    Key? key,
    this.fullScreen = false,
    required this.onRetry,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return fullScreen
        ? Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Image.asset(
                  'assets/images/no-internet.png',
                  width: 300,
                ),
                Text(
                  'please_check_your_internet_connection'.tr(),
                  style: Theme.of(context).textTheme.headline6,
                ),
                const SizedBox(
                  height: 16,
                ),
                ElevatedButton.icon(
                  onPressed: onRetry,
                  icon: const Icon(Icons.replay_rounded),
                  label: Text(
                    'retry'.tr(),
                  ),
                )
              ],
            ),
          )
        : Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Column(
              children: [
                Text(
                  'please_check_your_internet_connection'.tr(),
                  style: Theme.of(context).textTheme.headline6,
                ),
                ElevatedButton.icon(
                  onPressed: onRetry,
                  icon: const Icon(Icons.replay_rounded),
                  label: Text(
                    'retry'.tr(),
                  ),
                ),
              ],
            ),
          );
  }
}
