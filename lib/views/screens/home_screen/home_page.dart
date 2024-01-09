import 'package:flutter/material.dart';
import 'package:test3/views/screens/home_screen/widget/cart_widget.dart';
import 'package:test3/views/screens/home_screen/widget/search_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Customize'),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            const ItemSearch(),
            const SizedBox(
              height: 5,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height - 160,
              child: GridView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: 18,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemBuilder: (context, builder) {
                  return CartWidget();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
