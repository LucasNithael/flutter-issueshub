import 'package:flutter/material.dart';
import 'package:issueshub/data/dummy_issue.dart';
import 'package:issueshub/models/issue.dart';
import 'package:issueshub/components/issue_tile.dart';

class IssueList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    List<Issue> issues = DUMMY_ISSUES.values.map((data) {
      return Issue(
        id: data['id']!,
        titulo: data['titulo']!,
        descricao: data['descricao']!,
        designado: data['designado']!,
        label: data['label']!,
        numero: data['numero']!,
      );
    }).toList();
    
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Buscar',
                hintText: 'Digite para buscar',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              onChanged: (value) {
                // Aqui você pode adicionar a lógica para filtrar a lista de issues
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: issues.length,
              itemBuilder: (ctx, i) => IssueTile(issues[i]),
            ),
          ),
        ],
      )
    );

    // return Scaffold(
    //   body: ListView.builder(
    //     itemCount: issues.length,
    //     itemBuilder: (ctx, i) => IssueTile(issues[i]),
    //     )
    //   );
  }
}