
import 'package:flutter/material.dart';

class BloodRequestScreen extends StatelessWidget {
const BloodRequestScreen({super.key});

@override
Widget build(BuildContext context) {
return Scaffold(
backgroundColor: Colors.white,
appBar: AppBar(
backgroundColor: Colors.white,
elevation: 0,
centerTitle: true,
title: const Text(
'Blood Requests',
style: TextStyle(
color: Color(0xFF1E293B),
fontWeight: FontWeight.bold,
fontSize: 20,
),
),
),
body: SingleChildScrollView(
padding: const EdgeInsets.symmetric(
horizontal: 16,
vertical: 10,
),
child: const Column(
children: [
BloodCard(
bloodGroup: 'O-',
units: '3 Units',
location:
'Khulna City Medical College Hospital, KDA Avenue',
),
SizedBox(height: 16),
BloodCard(
bloodGroup: 'O+',
units: '2 Units',
location:
'Khulna City Medical College Hospital, KDA Avenue',
),
],
),
),
);
}
}

class BloodCard extends StatelessWidget {
final String bloodGroup;
final String units;
final String location;

const BloodCard({
super.key,
required this.bloodGroup,
required this.units,
required this.location,
});

@override
Widget build(BuildContext context) {
return Container(
decoration: BoxDecoration(
color: Colors.white,
borderRadius: BorderRadius.circular(16),
border: Border.all(color: Colors.grey.shade200),
boxShadow: [
BoxShadow(
color: Colors.black.withOpacity(0.04),
blurRadius: 10,
offset: const Offset(0, 4),
),
],
),
child: ClipRRect(
borderRadius: BorderRadius.circular(16),
child: IntrinsicHeight(
child: Row(
children: [
Container(
width: 6,
color: const Color(0xFFEF4444),
),
Expanded(
child: Padding(
padding: const EdgeInsets.all(16),
child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
children: [
Row(
mainAxisAlignment:
MainAxisAlignment.spaceBetween,
children: [
Container(
padding: const EdgeInsets.symmetric(
horizontal: 10,
vertical: 4,
),
decoration: BoxDecoration(
color: const Color(0xFFFFECEF),
borderRadius: BorderRadius.circular(6),
),
child: const Text(
'URGENT',
style: TextStyle(
color: Color(0xFFEF4444),
fontSize: 11,
fontWeight: FontWeight.bold,
),
),
),
Row(
children: [
const Icon(
Icons.water_drop,
color: Color(0xFFEF4444),
size: 16,
),
const SizedBox(width: 4),
Text(
units,
style: const TextStyle(
color: Color(0xFF1E293B),
fontWeight: FontWeight.w600,
fontSize: 13,
),
),
],
),
],
),
const SizedBox(height: 12),
Text(
'$bloodGroup Blood Needed',
style: const TextStyle(
color: Color(0xFF1E293B),
fontSize: 18,
fontWeight: FontWeight.bold,
),
),
const SizedBox(height: 8),
Row(
children: [
Icon(
Icons.location_on_outlined,
size: 16,
color: Colors.grey.shade500,
),
const SizedBox(width: 6),
Expanded(
child: Text(
location,
maxLines: 2,
overflow: TextOverflow.ellipsis,
style: TextStyle(
color: Colors.grey.shade600,
fontSize: 12,
),
),
),
],
),
const SizedBox(height: 16),
SizedBox(
width: double.infinity,
height: 42,
child: ElevatedButton(
style: ElevatedButton.styleFrom(
backgroundColor:
const Color(0xFF132A46),
elevation: 0,
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(8),
),
),
onPressed: () {
ScaffoldMessenger.of(context).showSnackBar(
SnackBar(
content: Text(
'$bloodGroup Blood Request Details',
),
),
);
},
child: const Text(
'View Details',
style: TextStyle(
color: Colors.white,
fontWeight: FontWeight.w600,
fontSize: 14,
),
),
),
),
],
),
),
),
],
),
),
),
);
}
}