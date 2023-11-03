import 'package:flutter/material.dart';

class CardHome extends StatelessWidget {
  const CardHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      margin: const EdgeInsets.all(16),
      child: const Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome to Bit4life',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'What happens with someone’s Bitcon if this person dies? Well, we know the answer so let us tell you! Those bitcoins will stay forever on the person’s wallets in an unreachable, untouchable and inaccessible way until the end of the world. Dramatic right? But calm down, it doesn’t have to be like that and that is why we’re here :)',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(height: 16),
            ListTile(
              leading: Icon(Icons.check),
              title: Text('Heritage Planning regarding your Bitcoins'),
            ),
            ListTile(
              leading: Icon(Icons.check),
              title: Text('Transfer your Bitcoins inheritance through Smart Contracts '),
            ),
            ListTile(
              leading: Icon(Icons.check),
              title: Text('Safe, transparent and Highly Agile'),
            ),
            SizedBox(height: 16),
            Text(
              'Click at the button below to know more!',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
