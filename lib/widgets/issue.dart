import 'package:flutter/material.dart';
import 'package:issueshub/data/dummy_issue.dart';

class CustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const issues ={...DUMMY_ISSUES};
    

    return Scaffold(
      body: ListView.builder(
        itemCount: issues.length,
        itemBuilder: (ctx, i) => ListTile(
          title: Text(issues.values.elementAt(i)['titulo']!),
          subtitle: Text(issues.values.elementAt(i)['descricao']!),
        )
      ),
    );
  }
}
