import 'package:flutter/material.dart';


class gridtest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Scrollable Grid Example")),
        body: Padding(
          padding: EdgeInsets.all(8.0),
          child: Container(
            height: 400, // Set the height of the container
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 5, // Number of columns
                crossAxisSpacing: 8.0, // Space between columns
                mainAxisSpacing: 8.0, // Space between rows
                childAspectRatio: 1.0, // Aspect ratio for each grid item
              ),
              itemCount: 90, // Number of items in the grid
              itemBuilder: (context, index) {
                return Container(
                  color: Colors.blue[(index % 9 + 1) * 100],
                  child: Center(
                    child: Text(
                      'Item $index',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
