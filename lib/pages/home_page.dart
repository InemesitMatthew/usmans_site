import 'package:flutter/material.dart';
import '../models/article.dart';
import '../models/drug_model.dart';
import '../views/articles_view.dart';
import '../views/drug_cards_views.dart';

// Enum for menu options
enum MenuOption { DrugCards, Articles }

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  MenuOption _selectedOption = MenuOption.DrugCards;

  // Sample data for drugs
  final List<Drug> drugs = List.generate(
    20,
    (index) => Drug(
      name: 'Drug ${index + 1}',
      frequency: 'Once daily',
      indicator: 'General indication details',
      drugActions: 'Drug actions description',
      sideEffects: 'Common side effects',
    ),
  );

  // Sample data for articles
  final List<Article> articles = List.generate(
    20,
    (index) => Article(
      title: 'Scientific Publication for Drug ${index + 1}',
      content:
          'This publication details the properties, indications, usage, beneficial effects, and side effects of Drug ${index + 1}.',
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Article Assignment'),
        backgroundColor: Colors.teal[700],
        actions: [
          PopupMenuButton<MenuOption>(
            onSelected: (MenuOption option) {
              setState(() {
                _selectedOption = option;
              });
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<MenuOption>>[
              const PopupMenuItem<MenuOption>(
                value: MenuOption.DrugCards,
                child: Text('Drug Cards'),
              ),
              const PopupMenuItem<MenuOption>(
                value: MenuOption.Articles,
                child: Text('Articles'),
              ),
            ],
          ),
        ],
      ),
      body: _selectedOption == MenuOption.DrugCards
          ? DrugCardsView(drugs: drugs)
          : ArticlesView(articles: articles),
      backgroundColor: Colors.grey[300],
    );
  }
}
