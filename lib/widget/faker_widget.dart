// import 'package:flutter/material.dart';
// // import 'package:faker/faker.dart';
//
// class RandomPersonGenerator extends StatefulWidget {
//   const RandomPersonGenerator({super.key});
//
//   @override
//   _RandomPersonGeneratorState createState() => _RandomPersonGeneratorState();
// }
//
// class _RandomPersonGeneratorState extends State<RandomPersonGenerator> {
//   Map<String, dynamic> _personData = {};
//
//   void _generatePerson() {
//     setState(() {
//       _personData = generatePerson();
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Random Person Generator'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const SizedBox.shrink(),
//             Text('First Name: ${_personData['firstName']}'),
//             Text('Last Name: ${_personData['lastName']}'),
//             Text('Phone Number: ${_personData['phoneNumber']}'),
//             Text('Country: ${_personData['country']}'),
//             Text('Address: ${_personData['address']}'),
//
//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: _generatePerson,
//               child: const Text('Generate Person'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   // Map<String, dynamic> generatePerson() {
//     // var faker = Faker();
//     // return {
//     //   'firstName': faker.person.firstName(),
//     //   'lastName': faker.person.lastName(),
//     //   'phoneNumber': faker.phoneNumber.toString(),
//     //   'country': faker.address.country(),
//     //   'address': faker.address.streetAddress(),
//     // };
//   }
// }