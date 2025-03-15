import 'package:flutter/material.dart';
import 'package:usman_akinseku_app/models/drug_model.dart';

class DrugCard extends StatelessWidget {
  final Drug drug;

  const DrugCard({Key? key, required this.drug}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      color: Colors.grey[200],
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              drug.name,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 8),
            Text('Frequency: ${drug.frequency}'),
            Text('Indicator: ${drug.indicator}'),
            Text('Drug Actions: ${drug.drugActions}'),
            Text('Side Effects: ${drug.sideEffects}'),
          ],
        ),
      ),
    );
  }
}
