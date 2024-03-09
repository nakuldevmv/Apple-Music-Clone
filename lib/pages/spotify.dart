// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// void main() {
//   runApp(MaterialApp(
//     home: Spotify(),
//   ));
// }

// class Spotify extends StatefulWidget {
//   @override
//   State<Spotify> createState() => _MyAppState();
// }

// class _MyAppState extends State<Spotify> {
//   String _accessToken;

//   Future<void> _getAccessToken() async {
//     const String clientId = '9f8924fee1dd4e29a524e4105fd01531';
//     const String clientSecret = 'e4b06036fe0c46c688e200eefc9ba677';

//     var response = await http.post(
//       'https://accounts.spotify.com/api/token',
//       headers: {
//         'Authorization':
//             'Basic ' + base64Url.encode(utf8.encode('$clientId:$clientSecret')),
//         'Content-Type': 'application/x-www-form-urlencoded',
//       },
//       body: {
//         'grant_type': 'client_credentials',
//       },
//     );

//     if (response.statusCode == 200) {
//       var jsonResponse = jsonDecode(response.body);
//       _accessToken = jsonResponse['access_token'];
//     } else {
//       throw Exception('Failed to obtain access token');
//     }
//   }

//   Future<Map<String, dynamic>> fetchData() async {
//     if (_accessToken == null) {
//       await _getAccessToken();
//     }

//     var response = await http.get(
//       'https://api.spotify.com/v1/me/top/tracks?time_range=long_term&limit=5',
//       headers: {
//         'Authorization': 'Bearer $_accessToken',
//       },
//     );

//     if (response.statusCode == 200) {
//       return jsonDecode(response.body);
//     } else {
//       throw Exception('Failed to load data');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Spotify Data'),
//       ),
//       body: FutureBuilder<Map<String, dynamic>>(
//         future: fetchData(),
//         builder: (context, snapshot) {
//           if (snapshot.hasData) {
//             return ListView.builder(
//               itemCount: snapshot.data['items'].length,
//               itemBuilder: (context, index) {
//                 return ListTile(
//                   title: Text(snapshot.data['items'][index]['name']),
//                   subtitle:
//                       Text(snapshot.data['items'][index]['artists'][0]['name']),
//                 );
//               },
//             );
//           } else if (snapshot.hasError) {
//             return Text("${snapshot.error}");
//           }
//           return CircularProgressIndicator();
//         },
//       ),
//     );
//   }
// }
