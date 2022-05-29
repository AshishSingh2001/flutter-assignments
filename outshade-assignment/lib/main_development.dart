// Copyright (c) 2021, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:outshade_assignment/app/app.dart';
import 'package:outshade_assignment/bootstrap.dart';
import 'package:path_provider/path_provider.dart';
import 'package:user_repository/user_repository.dart';

// ignore: avoid_void_async
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: await getTemporaryDirectory(),
  );
  const userRepository = UserRepository();
  await bootstrap(() => const App(
        userRepository: userRepository,
      ));
}
