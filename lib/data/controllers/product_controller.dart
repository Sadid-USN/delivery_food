import 'package:delivery_food/data/repository/product_repo.dart';
import 'package:delivery_food/models/product_model.dart';
import 'package:get/get.dart';

//! 6:48
class ProductController extends GetxController {
  final ProductRepository productRepository;

  ProductController({required this.productRepository});

  List<dynamic> _productList = [];
  List<dynamic> get productList => _productList;

  Future<void> getProductList() async {
    Response response = await productRepository.getProductList();

    if (response.statusCode == 200) {
      print('*******GOT PRODUCT*******');
      //! first we initialized as null because it repeat
      _productList = [];
      //! here in addAll we must puting a model caus data is json type
      _productList.addAll(Product.fromJson(response.body).getProducts);

      update();
    } else {}
  }
}
