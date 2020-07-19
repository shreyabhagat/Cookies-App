import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final Image image;
  final double price;
  final String title;
  final double height;
  MyCard({this.image, this.price, this.title,this.height});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        elevation: 3,
        child: Container(
          height: height,
          width: 130,
          padding: EdgeInsets.symmetric(vertical: 6, horizontal: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.topRight,
                child: Icon(
                  Icons.favorite_border,
                  color: Color(0xffde611f),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              image,
              SizedBox(
                height: 5,
              ),
              Text(
                '\$$price',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffde611f),
                ),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                title,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 3,
              ),
              Divider(
                color: Colors.grey,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(
                    Icons.shopping_basket,
                    size: 20,
                    color: Color(0xffde611f),
                  ),
                  Text(
                    'Add to Card',
                    style: TextStyle(
                      color: Color(0xffde611f),
                      fontSize: 15,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
