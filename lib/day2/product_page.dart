// import 'package:flutter/material.dart';

// class ProductPage extends StatelessWidget {
//   const ProductPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Praduct Page")),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 16),
//         child: Column(
//           children: [
//             Container(
//               padding: EdgeInsets.all(10),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 boxShadow: [BoxShadow(
//                   color: const Color.fromARGB(255, 41, 141, 136),
//                   blurRadius:2,
//                   offset: Offset(4, 8,)
//                 )],
//               ),
//               child: Row(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Image.asset("assets/images 1.jpeg", height: 140, width: 140),
//                   SizedBox(width: 10),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [Text("Name : Mobile"), Text("Price : 350")],
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// ----------------------------------------------------------------------------------------------------

// import 'package:flutter/material.dart';
// import 'package:project1/day2/model/product_model.dart';

// class ProductPage extends StatelessWidget {
//   ProductPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Product Page")),
//       body: ListView.builder(
//         itemCount: products.length,
//         shrinkWrap: true,
//         itemBuilder: (context, index) 
//         {
//           return CardWidget(
//             image: products[index].image,
//             name: products[index].name,
//             price: products[index].price,
//           );
//         },
//       ),
//     );
//   }

//    List<ProductModel> products = [
//     ProductModel(image: "assets/images 1.jpeg", name: "mobile", price: 20.00),
//     ProductModel(image: "assets/images 1.jpeg", name: "mobile", price: 20.00),
//     ProductModel(image: "assets/images 1.jpeg", name: "mobile", price: 20.00),
//     ProductModel(image: "assets/images 1.jpeg", name: "mobile", price: 20.00),
//   ];
// }

// class CardWidget extends StatelessWidget {
//   final String name;
//   final String image;
//   final double price;
//   const CardWidget({
//     super.key,
//     required this.image,
//     required this.name,
//     required this.price,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
    
//       padding: EdgeInsets.all(10),
//       decoration: BoxDecoration(
//         color: Color(0xFFE0F7FA),
//         borderRadius: BorderRadius.circular(20),
//         boxShadow: [
//           BoxShadow(
//             color: Color.fromARGB(255, 32, 206, 197),
//             blurRadius: 2,
//             offset: Offset(0, 1),
//           ),
//         ],
//       ),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Image.asset(image, height: 140, width: 180),
//           SizedBox(width: 10),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [Text("Name : $name"), Text("Price : $price")],
//           ),
//         ],
//       ),
//     );
//   }
// }
// ------------------------------------------------------------------------------

import 'package:flutter/material.dart';
import 'package:project1/day2/model/product_model.dart';

class ProductPage extends StatelessWidget {
  ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3F1F8),
      appBar: AppBar(
        title: Text("Product Page"),
        backgroundColor: Color(0xFF6A1B9A),
        foregroundColor: Colors.white,
        elevation: 4,
      ),
      body: ListView.builder(
        itemCount: products.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return CardWidget(
            image: products[index].image,
            name: products[index].name,
            price: products[index].price,
          );
        },
      ),
    );
  }

  List<ProductModel> products = [
    ProductModel(image: "assets/images 1.jpeg", name: "Mobile", price: 20.00),
    ProductModel(image: "assets/download.jpeg", name: "Headphones", price: 15.00),
    ProductModel(image: "assets/charger.jpeg", name: "Charger", price: 10.00),
    ProductModel(image: "assets/smart watch.jpeg", name: "Smartwatch", price: 45.00),
  ];
}

class CardWidget extends StatelessWidget {
  final String name;
  final String image;
  final double price;
  const CardWidget({
    super.key,
    required this.image,
    required this.name,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      padding: EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Color(0xFFFFFFFF),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.purple.withOpacity(0.15),
            blurRadius: 6,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(image, height: 100, width: 100, fit: BoxFit.cover),
          ),
          SizedBox(width: 18),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Name: $name",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    decoration: TextDecoration.underline,
                    decorationColor: Color(0xFF6A1B9A),
                    color: Color(0xFF4A148C),
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "Price: \$${price.toStringAsFixed(2)}",
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF2E7D32),
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
