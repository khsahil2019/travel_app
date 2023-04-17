import 'package:flutter/material.dart';

class Hotel {
  String name;
  String location;

  Hotel({required this.name, required this.location});
}

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final List<Hotel> _hotels = [
    Hotel(name: 'Grand Hotel', location: 'New York'),
    Hotel(name: 'Yamuna Inn', location: 'Los Angeles'),
    Hotel(name: 'Taj Resort', location: 'Chicago'),
    // ...
  ];

  List<Hotel> _filteredHotels = [];

  void _filterHotels(String query) {
    setState(() {
      _filteredHotels = _hotels
          .where((hotel) =>
              hotel.name.startsWith(query) || hotel.location.startsWith(query))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Search Hotels'),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        actions: [
          // Icon(
          //   Icons.back_hand,
          //   color: Colors.black,
          // )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          // TextField(
          //   onChanged: (value) => _filterHotels(value),
          //   decoration: InputDecoration(
          //     hintText: 'Enter some alphabets to search for hotels',
          //   ),
          // ),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(20.0),
            ),
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: TextField(
              onChanged: (value) => _filterHotels(value),
              decoration: InputDecoration(
                hintText: 'Search',
                border: InputBorder.none,
                icon: Icon(Icons.search),
              ),
            ),
          ),

          Expanded(
            child: ListView.builder(
              itemCount: _filteredHotels.length,
              itemBuilder: (context, index) => ListTile(
                title: Text(_filteredHotels[index].name),
                subtitle: Text(_filteredHotels[index].location),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
