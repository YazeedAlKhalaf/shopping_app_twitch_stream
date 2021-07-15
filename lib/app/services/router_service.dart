import "package:injectable/injectable.dart";
import "package:shopping_app/app/router/router.dart";
    
@lazySingleton
class RouterService {
  final ShoppingAppRouter router = ShoppingAppRouter();
}