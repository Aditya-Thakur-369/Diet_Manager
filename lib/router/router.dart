// ignore_for_file: public_member_api_docs, sort_constructors_first
class AppRouter {
  String name;
  String path;
  AppRouter({
    required this.name,
    required this.path,
  });
}

class Routes {
  static AppRouter home = AppRouter(name: "/", path: "/");
  static AppRouter itemscreen = AppRouter(name: "/itemscreen", path: "/itemscreen");
}
