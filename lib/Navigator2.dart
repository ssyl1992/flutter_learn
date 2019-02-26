import 'package:flutter/material.dart';

class Product {
  final String title;
  final String description;
  Product(this.title, this.description);
}

class MyNaviPost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('商品列表'),
        ),
        body: ProductList(
          products: List.generate(20, (i) => Product('商品 $i', '这是商品详情，id:$i')),
        ));
  }
}

class ProductList extends StatelessWidget {
  final List<Product> products;
  ProductList({Key key, this.products}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            child: ListTile(title: Text(products[index].title)),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context){
                  return ProductDetailPage(product: products[index]);
                }
              ));
            },
          );
        });
  }
}

class ProductDetailPage extends StatelessWidget {
  final Product product;
  ProductDetailPage({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.title),
      ),
      body: Center(
        child: Text(product.description),
      ),
    );
  }
}
