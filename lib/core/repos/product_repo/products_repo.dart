import 'package:fruits_hub_dash_board/features/add_product/domain/entity/add_product_input_entity.dart';

abstract class ProductsRepo {
  Future<void> addProduct(AddProductInputEntity addProductInputEntity);
}
