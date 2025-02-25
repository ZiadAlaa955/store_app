import 'package:go_router/go_router.dart';
import 'package:store_app/Views/add_product_view.dart';
import 'package:store_app/Views/home_view.dart';
import 'package:store_app/Views/update_product_view.dart';
import 'package:store_app/models/product_model.dart';

String homePage = '/';
String updateProduct = '/updateProduct';
String addProduct = '/addProduct';

GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: homePage,
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: updateProduct,
      builder: (context, state) => UpdateProductView(
        product: state.extra as ProductModel,
      ),
    ),
    GoRoute(
      path: addProduct,
      builder: (context, state) => const AddProductView(),
    ),
  ],
);
