import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class LogViewScreen extends HookConsumerWidget {
  const LogViewScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Log View'),
      ),
      body: const Center(
        child: Text('Log View'),
      ),
    );
  }
}
