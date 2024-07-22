import 'dart:io';

import 'package:mason/mason.dart';

Future<void> run(HookContext context) async {
  final progress = context.logger.progress('Getting Packages...');
  await Process.run(
    'flutter',
    ['packages', 'get'],
  );
  await Process.run(
    'flutter',
    [
      'pub',
      'add',
      'fpdart',
    ],
  );

  progress.complete();
}
