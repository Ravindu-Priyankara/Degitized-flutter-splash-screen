import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Degitized Assignment Help',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Colombo, Sri lanka',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          const Text('41'),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;
    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    Widget textSection = const Padding(
      padding: EdgeInsets.all(32),
      child: Text(
        'Digitalization has revolutionized the way we approach learning and education. '
            'In the modern era, digitized assignments have become an integral part of the academic landscape.'
            'Digitized assignment help services have made it easier for students to submit their assignments online from anywhere and at any time.'
            'With the help of digitized assignment services, students can access a wide range of academic resources and tools, including plagiarism checkers, online libraries, and writing assistance, to name a few. '
            'These services have made the process of completing assignments more convenient, efficient, and flexible for students, enabling them to achieve better grades and improve their academic performance.'
            ' The increasing popularity of digitized assignment help services is a testament to the transformative impact of digital technology on education.',
        softWrap: true,style: TextStyle(fontSize: 14.0),
      ),
    );
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Degitized Assignment Help"),
        ),
        body: ListView(
          children: [
            Image.asset(
              'assets/front.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }
  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }

}
