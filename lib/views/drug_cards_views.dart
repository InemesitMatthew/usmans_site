import 'package:flutter/material.dart';
import 'package:usman_akinseku_app/models/drug_model.dart';
import '../components/drug_card.dart';

class DrugCardsView extends StatelessWidget {
  final List<Drug> drugs;

  const DrugCardsView({super.key, required this.drugs});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: drugs.length,
      itemBuilder: (context, index) {
        return DrugCard(drug: drugs[index]);
      },
    );
  }
}
