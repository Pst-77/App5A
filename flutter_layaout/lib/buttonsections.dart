import 'package:flutter/material.dart';

// ignore: camel_case_types
class buttonsection extends StatelessWidget {
  const buttonsection({super.key});
    
Column _buildColumn(IconData icon, String label, Color color,
    BuildContext context, String msg) {
    return Column(
      children: [
        IconButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(duration: const Duration(seconds: 1), content: Text(msg)));
          },
          icon: Icon(
            icon,
            size: 25,
          ),
          color: color,
        ),
        Text(label),
      ],
    );
  }

  
  @override
  Widget build(BuildContext context) {
     Color color = Theme.of(context).primaryColor;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildColumn(Icons.call, 'CALL', color, context, 'LLamando a'),
        _buildColumn(Icons.near_me, 'ROUTE', color, context, 'Trasladando a'),
        _buildColumn(Icons.share, 'SHARE', color, context, 'Compartiendo a')
      ],
    );
  }
}
