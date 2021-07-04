import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  final TextEditingController queryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: TextField(
          controller: queryController,
          autofocus: true,
          onChanged: (String value) {},
          style: TextStyle(
            fontSize: 17,
            color: Colors.blue,
          ),
          cursorColor: Colors.amber,
          decoration: InputDecoration(
            filled: true,
            contentPadding: EdgeInsets.fromLTRB(50, 50, 50, 0),
            hintText: "Search most suggested",
            fillColor: Color.fromARGB(255,53,64,77),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(45),
              borderSide: BorderSide(
                width: 0,
                style: BorderStyle.none,
              ),
            ),
            hintStyle: TextStyle(
              color: Colors.grey,
              fontSize: 17
            ),
            prefixIcon: Padding(
              padding: EdgeInsets.only(left: 40, right: 10),
              child: Icon(
                Icons.search,
                color: Colors.grey,
              ), // icon is 48px widget.
            ),
          ),
        ),
      ),
    );
  }
}
