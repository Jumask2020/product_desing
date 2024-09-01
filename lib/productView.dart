import 'package:flutter/material.dart';
import 'package:learn/model/product.dart';

class ProductView extends StatelessWidget {
  const ProductView({super.key});

  @override
  Widget build(BuildContext context) {
    List<Product> products = [];
    products.add(Product(
        name: 'SamSung S10+',
        urlImage:
            'https://www.sammobile.com/wp-content/uploads/2019/06/galaxy-s10-plus-2.jpg',
        description:
            'Samsung’s Galaxy S devices have been the default Android flagships for many years. Despite numerous attempts by rivals to replicate some of the series’ success,',
        newPrice: '\$1000',
        oldPrice: '\$800',
        color: [
          Colors.black,
          Colors.white,
          Colors.blue,
        ]));
    products.add(Product(
        name: 'Iphone 14 Pro Mix',
        urlImage:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzoD3MF7JDdO0D6FrpOo0nr0JBHg18TLkg8g&s',
        description:
            'Das iPhone 14 Pro Max ist zweifellos das beste Beispiel für die innovative Apple-Technologie mit Funktionen wie Dynamic Island und Apples Version von Always-on-Displays.',
        newPrice: '\$2500',
        oldPrice: '\$3000',
        color: [
          Colors.black,
          Colors.pink,
          Colors.tealAccent,
        ]));
    products.add(Product(
        name: 'SamSung S10+',
        urlImage:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRg6TccmQd7tDg4r1xhXtLOrcg77BJiyFbh6Q&s',
        description:
            'Enjoy attracting attention 😎 with an elegant phone, high specifications, and a special price ',
        newPrice: '\$300',
        oldPrice: '\$260',
        color: [
          Colors.blueAccent,
          Colors.purple,
          Colors.grey,
        ]));
    products.add(Product(
        name: 'SamSung S10+',
        urlImage:
            'https://www.sammobile.com/wp-content/uploads/2019/06/galaxy-s10-plus-2.jpg',
        description:
            'Samsung’s Galaxy S devices have been the default Android flagships for many years. Despite numerous attempts by rivals to replicate some of the series’ success,',
        newPrice: '\$1000',
        oldPrice: '\$800',
        color: [
          Colors.black,
          Colors.white,
          Colors.blue,
        ]));
    products.add(Product(
        name: 'Iphone 14 Pro Mix',
        urlImage:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzoD3MF7JDdO0D6FrpOo0nr0JBHg18TLkg8g&s',
        description:
            'Das iPhone 14 Pro Max ist zweifellos das beste Beispiel für die innovative Apple-Technologie mit Funktionen wie Dynamic Island und Apples Version von Always-on-Displays.',
        newPrice: '\$2500',
        oldPrice: '\$3000',
        color: [
          Colors.black,
          Colors.pink,
          Colors.tealAccent,
        ]));
    products.add(Product(
        name: 'SamSung S10+',
        urlImage:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRg6TccmQd7tDg4r1xhXtLOrcg77BJiyFbh6Q&s',
        description:
            'Enjoy attracting attention 😎 with an elegant phone, high specifications, and a special price ',
        newPrice: '\$300',
        oldPrice: '\$260',
        color: [
          Colors.blueAccent,
          Colors.purple,
          Colors.grey,
        ]));
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(),
      body: SafeArea(
          child: ListView(
        children: products
            .map((product) => buildWidgetProduct(context, product))
            .toList(),
      )),
    );
  }

  Widget buildWidgetProduct(BuildContext context, Product p) {
    return Container(
      height: 130,
      margin: const EdgeInsets.all(10),
      // color: Colors.amberAccent,
      child: Row(
        children: [
          Container(
            height: 130,
            width: MediaQuery.of(context).size.width / 3,
            decoration: BoxDecoration(
                // color: Colors.amber,
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                    image: NetworkImage(
                      p.urlImage,
                    ),
                    fit: BoxFit.fill)),
            // child: Image.network(
            //   p.urlImage,
            //   fit: BoxFit.cover,
            // ),
          ),
          const SizedBox(
            width: 10,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 2 / 3 - 30,
            // color: Colors.teal,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  p.name,
                  style: const TextStyle(
                      fontSize: 13, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  p.description,
                  style: TextStyle(color: Colors.grey[600]),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 10,
                ),

                // const SizedBox(
                //   height: 5,
                // ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          p.oldPrice,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.lineThrough),
                        ),
                        Text(
                          p.newPrice,
                          style: TextStyle(
                              color: Colors.red[400],
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        p.color != null ? const Text('Color') : const Text(''),
                        const SizedBox(
                          height: 3,
                        ),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                height: 15, width: 15, color: p.color?[0]),
                            Container(
                              margin: const EdgeInsets.symmetric(horizontal: 3),
                              height: 15,
                              width: 15,
                              color: p.color?[1],
                            ),
                            Container(
                              height: 15,
                              width: 15,
                              color: p.color?[2],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 3,
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
