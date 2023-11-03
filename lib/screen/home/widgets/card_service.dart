import 'package:bitlife/screen/services_card/service_1.dart';
import 'package:bitlife/screen/services_card/service_2.dart';
import 'package:flutter/material.dart';

class CardService extends StatefulWidget {
  const CardService({Key? key}) : super(key: key);

  @override
  _CardServiceState createState() => _CardServiceState();
}

class _CardServiceState extends State<CardService> {
  List<ServiceInfo> services = [
    ServiceInfo(
      imageUrl: "https://picsum.photos/275/350",
      title: "Service 1",
      location: "Location 1",
      rating: 4.7,
      description: "Description for Service 1",
      page: const Servico01(),
    ),
    ServiceInfo(
      imageUrl: "https://picsum.photos/275/350",
      title: "Service 2", // Change the title to something relevant
      location: "Location 2", // Change the location to something relevant
      rating: 4.5, // Change the rating to something relevant
      description: "Description for Service 2", // Change the description
      page: const Servico02(), // Use the Servico02 page
    ),
    // Define more services with their unique characteristics and pages here
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
      height: 350,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: services.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => DescriptionPage(
                    title: services[index].title,
                    description: services[index].description,
                    page: services[index].page,
                  ),
                ),
              );
            },
            child: CardItem(
              imageUrl: services[index].imageUrl,
              title: services[index].title,
              location: services[index].location,
              rating: services[index].rating,
              description: services[index].description,
            ),
          );
        },
      ),
    );
  }
}

class ServiceInfo {
  final String imageUrl;
  final String title;
  final String location;
  final double rating;
  final String description;
  final Widget page;

  ServiceInfo({
    required this.imageUrl,
    required this.title,
    required this.location,
    required this.rating,
    required this.description,
    required this.page,
  });
}

class CardItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String location;
  final double rating;
  final String description;

  const CardItem({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.location,
    required this.rating,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 275,
      margin: const EdgeInsets.only(right: 10.0),
      child: const Card(
        color: Colors.blue,
      ),
    );
  }
}

class DescriptionPage extends StatelessWidget {
  final String title;
  final String description;
  final Widget page;

  const DescriptionPage({
    super.key,
    required this.title,
    required this.description,
    required this.page,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(description),
            page, // Display the unique page content here
          ],
        ),
      ),
    );
  }
}
