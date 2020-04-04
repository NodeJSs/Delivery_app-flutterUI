import 'package:flutter/material.dart';
import 'package:delivery_app/widgets/CustomForm.dart';

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    //board size
    var paint = Paint(); //brush
    paint.color = Color(0x26ffffff);
    paint.style = PaintingStyle.fill;

    var path = Path(); //drawing
    path.moveTo(size.width * 0.5, 0);
    path.quadraticBezierTo(
        size.width * 0.25, size.height * 0.5, size.width * 0.5, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint); //canvas is board
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

class AtmCard extends StatefulWidget {
  /*final String cardNumber;
  final String expiryDate;
  final String cardHolderName;
  final String cvvCode;*/
  
  /*AtmCard({
    @required this.cardNumber,
    @required this.expiryDate,
    @required this.cardHolderName,
    @required this.cvvCode

  });*/

  @override
  _AtmCardState createState() => _AtmCardState();
}

class _AtmCardState extends State<AtmCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Stack(children: <Widget>[
            Container(
              height: 250.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7.0),
                  boxShadow: <BoxShadow>[
                    BoxShadow(color: Color(0x40000000), blurRadius: 5.0)
                  ],
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [Color(0xffB993D6), Color(0xff8CA6DB)])),
            ),
            Align(
              //alignment: Alignment.topRight,
              child: Container(
                height: 250.0,
                width: (MediaQuery.of(context).size.width - 30),
                child: CustomPaint(
                  painter: CurvePainter(),
                ),
              ),
            ),
            Container(
              height: 250.0,
              padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 45.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topRight,
                        child: Image(
                          image: AssetImage("assets/images/mc_symbol.png"),
                          width: 60.0,
                        ),
                      ),
                      SizedBox(height: 30.0),
                      Text(
                        "4747 4747 4747 4747",
                        maxLines: 1,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 25.0,
                            wordSpacing: 20.0),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Alexandra Smith",
                        style: TextStyle(color: Colors.white, fontSize: 23.0),
                      ),
                      Text(
                        "07/21",
                        style: TextStyle(color: Colors.white, fontSize: 23.0),
                      )
                    ],
                  )
                ],
              ),
            )
          ]),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 15.0),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.photo_camera,
                color: Color(0xff9586A8),
                size: 45.0,
              ),
            ),
          ),
          CustomForm()
        ],
      ),
    );
  }
}
