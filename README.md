# tik_tak_toe

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

children: [
Row(
mainAxisAlignment: MainAxisAlignment.spaceAround,
children: [
SizedBox(
width: 15,
),
Text(
'Tic Tac Toe',
style: TextStyle(
color: Colors.white,
fontWeight: FontWeight.bold,
fontSize: 20,
),
),
Icon(
Icons.refresh,
color: Colors.white,
),
],
),
SizedBox(
height: 40,
),
Row(
mainAxisAlignment: MainAxisAlignment.spaceAround,
children: [
Text(
'Player 1',
style: TextStyle(
color: Colors.white,
fontWeight: FontWeight.bold,
fontSize: 20,
),
),
Text(
'Player 2',
style: TextStyle(
color: Colors.white,
fontWeight: FontWeight.bold,
fontSize: 20,
),
),
],
),
SizedBox(
height: 20,
),
Row(
mainAxisAlignment: MainAxisAlignment.spaceAround,
children: [
Text(
'0',
style: TextStyle(
color: Colors.white,
fontWeight: FontWeight.bold,
fontSize: 22,
),
),
Text(
'0',
style: TextStyle(
color: Colors.white,
fontWeight: FontWeight.bold,
fontSize: 22,
),
),
],
),
SizedBox(
height: 50,
),
SizedBox(
width: MediaQuery.of(context).size.width,
child: Column(
children: [
Row(
mainAxisAlignment: MainAxisAlignment.center,
children: [
Container(
height: 120,
width: MediaQuery.of(context).size.width * 00.33,
decoration: BoxDecoration(
color: Colors.black,
border: Border.all(
color: Colors.grey,
width: 5,
),
),
child: Center(
child: Text(
'O',
style: TextStyle(
color: Colors.red,
fontWeight: FontWeight.bold,
fontSize: 80,
),
),
),
),
Container(
height: 120,
width: MediaQuery.of(context).size.width * 00.33,
decoration: BoxDecoration(
color: Colors.black,
border: Border.all(
color: Colors.grey,
width: 5,
),
),
child: Center(
child: Text(
'X',
style: TextStyle(
color: Colors.blue,
fontWeight: FontWeight.bold,
fontSize: 80,
),
),
),
),
Container(
height: 120,
width: MediaQuery.of(context).size.width * 00.33,
decoration: BoxDecoration(
color: Colors.black,
border: Border.all(
color: Colors.grey,
width: 5,
),
),
),
],
),
Row(
mainAxisAlignment: MainAxisAlignment.center,
children: [
Container(
height: 120,
width: MediaQuery.of(context).size.width * 00.33,
decoration: BoxDecoration(
color: Colors.black,
border: Border.all(
color: Colors.grey,
width: 5,
),
),
),
Container(
height: 120,
width: MediaQuery.of(context).size.width * 00.33,
decoration: BoxDecoration(
color: Colors.black,
border: Border.all(
color: Colors.grey,
width: 5,
),
),
),
Container(
height: 120,
width: MediaQuery.of(context).size.width * 00.33,
decoration: BoxDecoration(
color: Colors.black,
border: Border.all(
color: Colors.grey,
width: 5,
),
),
),
],
),
Row(
mainAxisAlignment: MainAxisAlignment.center,
children: [
Container(
height: 120,
width: MediaQuery.of(context).size.width * 00.33,
decoration: BoxDecoration(
color: Colors.black,
border: Border.all(
color: Colors.grey,
width: 5,
),
),
),
Container(
height: 120,
width: MediaQuery.of(context).size.width * 00.33,
decoration: BoxDecoration(
color: Colors.black,
border: Border.all(
color: Colors.grey,
width: 5,
),
),
),
Container(
height: 120,
width: MediaQuery.of(context).size.width * 00.33,
decoration: BoxDecoration(
color: Colors.black,
border: Border.all(
color: Colors.grey,
width: 5,
),
),
),
],
),
],
),
),
],

