import 'package:diet_manager/features/details/model/data_model.dart';
import 'package:diet_manager/features/home/screen/homescreen.dart';
import 'package:diet_manager/features/item/itemscreen.dart';
import 'package:diet_manager/router/router.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(routes: [
  GoRoute(
    path: Routes.home.path,
    name: Routes.home.name,
    pageBuilder: (context, state) {
      return const CupertinoPage(child: HomeScreen());
    },
  ),
  GoRoute(
    path: Routes.itemscreen.path,
    name: Routes.itemscreen.name,
    pageBuilder: (context, state) {
      return CupertinoPage(child: ItemScreen(model: state.extra as DataModel));
    },
  )
]);
