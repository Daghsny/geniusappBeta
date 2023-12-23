import 'package:flutter/material.dart';
import 'package:geniusapp/Services/colors.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kMyGreyColor,
        actions: [
          SizedBox(
            width: 300,
            height: 40,
            child: TextField(
              onTap: () {},
              decoration: const InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: "Make Search Now...",
                suffixIcon: CircleAvatar(
                  backgroundColor: Colors.black,
                  child: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                ),
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(32))),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
