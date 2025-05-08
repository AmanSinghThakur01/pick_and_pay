import 'package:flutter/material.dart';
import 'package:pick_and_pay/product/productdisplay.dart';
import 'package:pick_and_pay/utils/api/api.dart';

class ProductGrid extends StatefulWidget {
  const ProductGrid({super.key});

  @override
  State<ProductGrid> createState() => _ProductGridState();
}

class _ProductGridState extends State<ProductGrid> {
  List<dynamic> _products = [];

  @override
  void initState() {
    super.initState();
    loadProducts();
  }

  Future<void> loadProducts() async {
    var data = await fetchProducts(); // Make sure fetchProducts returns List<Map<String, dynamic>>
    setState(() {
      _products = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SearchBar(
              hintText: 'Search any product',
              backgroundColor: WidgetStateProperty.all(Colors.grey[200]),
              shape: WidgetStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              leading: const Icon(Icons.search),
            ),
          ),
          Expanded(
            child: _products.isEmpty
                ? const Center(child: CircularProgressIndicator(
                ),)
                : GridView.builder(
                    padding: const EdgeInsets.all(10),
                    itemCount: _products.length,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemBuilder: (context, index) {
                      var product = _products[index];
                      return  InkWell(
                        onTap: (){
                         Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Productdisplay(product: product,),
                            ),);
                        },
                        child: Card(
                          color: const Color.fromARGB(255, 249, 235, 230),
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Column(
                            children: [
                                Text(
                              product['title'] ?? 'No Title',
                              textAlign: TextAlign.center,
                            ),
                            Image.network(
                              product['thumbnail'],
                              height: 100,
                              width: 100,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(height: 1,)
                            ]
                           
                          ),
                        ),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
