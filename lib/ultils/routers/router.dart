import 'package:go_router/go_router.dart';
import 'package:mannager_business/ui/ingredients/ingredient.dart';
import 'package:mannager_business/ui/products/product.dart';
import 'package:mannager_business/ui/root.dart';
import 'package:mannager_business/ultils/routers/path.dart';

class BusinessRouter {
  static final router = GoRouter(
    initialLocation: BusinessPath.root,
    routes: [
      GoRoute(
        path: BusinessPath.root,
        builder: (context, state) => const Root(),
      ),
      GoRoute(
        path: BusinessPath.createProduct,
        builder: (context, state) => const ProductScreen(),
      ),
      GoRoute(
        path: BusinessPath.createIngredient,
        builder: (context, state) => const IngredientScreen(),
      ),
    ],
  );
}
