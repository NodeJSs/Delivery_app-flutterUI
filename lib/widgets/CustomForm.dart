import 'package:flutter/material.dart';

class CustomForm extends StatefulWidget {
  
  
  @override
  _CustomFormState createState() => _CustomFormState();
}

class _CustomFormState extends State<CustomForm> {
  String nameOnCard;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {


    final _nameController = TextEditingController();
    _nameController.addListener(
      (){
        setState(() {
         nameOnCard = _nameController.text;
        });
      }
    );                                  
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Name on card",
              style: TextStyle(fontSize: 18.0, color: Color(0xff9586A8)),
            ),
          ),
          SizedBox(height: 10.0),
          TextField(
            
            controller: _nameController,
            
            style: TextStyle(fontSize: 18.0),
            decoration: InputDecoration(
              
              hintText: "Enter name",
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(color: Color(0xffD9D0E3), width: 5.0)),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(color: Color(0xffD9D0E3), width: 5.0)),
            ),
          ),
          SizedBox(height: 30.0),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Card Number",
              style: TextStyle(fontSize: 18.0, color: Color(0xff9586A8)),
            ),
          ),
          SizedBox(height: 10.0),
          TextField(
            keyboardType: TextInputType.number,
            style: TextStyle(fontSize: 18.0),
            decoration: InputDecoration(
              suffixIcon: Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: Image(
                  image: AssetImage("assets/images/mc_symbol.png"),
                  width: 10.0,
                ),
              ),
              hintText: "Enter Card Number",
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(color: Color(0xffD9D0E3), width: 5.0)),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide(color: Color(0xffD9D0E3), width: 5.0)),
            ),
          ),
          SizedBox(height: 30.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Expiry date",
                      style:
                          TextStyle(fontSize: 18.0, color: Color(0xff9586A8)),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Container(
                    width: (MediaQuery.of(context).size.width * 0.45) - 15,
                    child: TextField(
                      keyboardType: TextInputType.datetime,
                      style: TextStyle(fontSize: 18.0),
                      decoration: InputDecoration(
                        hintText: "Eg: 07/21",
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                                color: Color(0xffD9D0E3), width: 5.0)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                                color: Color(0xffD9D0E3), width: 5.0)),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 30.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "CVC",
                      style:
                          TextStyle(fontSize: 18.0, color: Color(0xff9586A8)),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Container(
                    width: (MediaQuery.of(context).size.width * 0.4) - 15,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      style: TextStyle(fontSize: 18.0),
                      decoration: InputDecoration(
                        suffixIcon: Padding(
                            padding: const EdgeInsets.only(right: 15.0),
                            child: Icon(
                              Icons.credit_card,
                              color: Color(0xffD9D0E3),
                            )),
                        hintText: "Security code",
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                                color: Color(0xffD9D0E3), width: 5.0)),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(
                                color: Color(0xffD9D0E3), width: 5.0)),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}