import 'package:flutter/material.dart';

class CustomRoundedButton extends StatelessWidget {

  CustomRoundedButton({this.title,this.colour,this.onPressed});
  final Color colour;
  final String title;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12.0),
      child: Material(
        elevation: 5.0,
        color: colour,
        //borderRadius: BorderRadius.circular(30.0),

        borderOnForeground: true,

        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 350.0,
          height: 42.0,
          shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(30),
          ),


          child: Row(
            children: <Widget>[
              Text(
                title,
                style: TextStyle(color: Colors.white),
              ),
              Spacer(),
              IconButton(
                  icon: Icon(Icons.arrow_forward, color: Colors.white),
                  onPressed: () {
                    // showSearch(context: context, delegate: Article)
                   // Navigator.pushNamed(context, RecipeSearch.id);
                  })
            ],
          ),
        ),
      ),
    );
  }
}
