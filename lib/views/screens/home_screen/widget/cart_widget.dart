import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartWidget extends StatefulWidget {
  CartWidget({super.key});

  @override
  State<CartWidget> createState() => _CartWidgetState();
}

class _CartWidgetState extends State<CartWidget> {
  int num = 1;

  @override
  Widget build(BuildContext context) {
    return Card(
      semanticContainer: true,
      clipBehavior: Clip.antiAlias,
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Expanded(
            child: Image.asset(
              'assets/download.jpeg',
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            'Test',
            style: GoogleFonts.aBeeZee(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'AED 10.99',
            style: GoogleFonts.aBeeZee(
              fontSize: 12,
              // fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  setState(() {
                    num -= 1;
                  });
                },
                icon: Icon(Icons.minimize_outlined),
              ),
              Text(
                '$num',
                style: GoogleFonts.aBeeZee(fontSize: 20),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    num += 1;
                  });
                },
                icon: Icon(Icons.add),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
