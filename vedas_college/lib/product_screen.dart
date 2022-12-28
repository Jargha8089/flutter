import 'package:flutter/material.dart';
import 'package:vedas_college/product_model.dart';

class ProductScreen extends StatefulWidget {
  static const routes = "/productScreen";
  const ProductScreen({Key? key}) : super(key: key);

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  List<ProductModel> productList = <ProductModel>[];
  List<ProductModel> duplicateList = <ProductModel>[];

  @override
  void initState(){
    _setProductData();
    super.initState();
  }

  _setProductData(){
    var appleProduct = ProductModel(
        title: "Apple",
        description: "Mobiles and Laptop",
        imageName: "assets/images/apple.png",
        price: "Rs. 1,00,000"
    );
    var androidProduct = ProductModel(
        title: "Android",
        description: "Android Mobiles and Tablets",
        imageName: "assets/images/android.png",
        price: "Rs. 30,000"
    );

    productList.add(appleProduct);
    productList.add(androidProduct);
    productList.add(appleProduct);
    productList.add(androidProduct);
    productList.add(appleProduct);
    productList.add(androidProduct);
    productList.add(appleProduct);
    productList.add(androidProduct);
    productList.add(appleProduct);
    productList.add(androidProduct);
    productList.add(appleProduct);
    productList.add(androidProduct);
    productList.add(appleProduct);
    productList.add(androidProduct);
    productList.add(appleProduct);
    productList.add(androidProduct);
    productList.add(appleProduct);
    productList.add(androidProduct);
    productList.add(appleProduct);
    productList.add(androidProduct);

    duplicateList
      ..clear()
      ..addAll(productList);
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: productList.length,
              itemBuilder: (context,index){
                return _createProductItem(productList[index]);
              },
            ),
          ),
        )
    );
  }


  Widget _createProductItem(ProductModel data) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: const BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20), // Image border
            child: SizedBox.fromSize(
              size: const Size.fromRadius(48), // Image radius
              child: Image.asset(data.imageName!, fit: BoxFit.cover),
            ),
          ),
          const SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                data.title!,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w900),
              ),
              const SizedBox(height: 3),
              Text(
                data.description!,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.w900),
              ),
              const SizedBox(height: 3),
              Text(
                data.price!,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.w900),
              ),
            ],
          ),
        ],
      ),
    );
  }

}
