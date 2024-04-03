import 'package:flutter/material.dart';
import 'package:issueshub/components/issuedetail_tile.dart';
import 'package:issueshub/models/issue.dart';

class IssueTile extends StatelessWidget {
  final Issue issue;

  IssueTile(this.issue);

  @override
  Widget build(BuildContext context) {
    final titulo = issue.titulo;
    final label = issue.label;
    final numero = issue.numero;
    final designado = issue.designado;
    final nomeRepo = 'RepoExemplo';

    return GestureDetector(
      onTap: () {
        // Função a ser executada quando o Container for tocado
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DetailPage()),
        );
      },
      child: Container(
        width: 100,
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        decoration: BoxDecoration(
          color: Color(0xFF161B22), // Cor de fundo
          border: Border.all(width: 1, color: Color(0xFF30363D)),
          borderRadius: BorderRadius.circular(5),
        ),
        padding: const EdgeInsets.all(8), // Espaçamento interno
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  '$nomeRepo #$numero',
                  style: TextStyle(color: Color(0xFF848D97)), // Cor do número
                ),
                Spacer(),
                Text(
                  designado,
                  style: const TextStyle(color: Color(0xFF848D97)), // Cor do número
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 4, horizontal: 0), // Margem do título
              child: Text(
                titulo,
                style: TextStyle(color: Colors.white), // Cor do título
              ),
            ),
            SizedBox(height: 8), // Espaço entre o título e o label
            Row(
              children: [
                Spacer(),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                  decoration: BoxDecoration(
                    color: Color(0xFF5C601A), // Cor de fundo do Container
                    borderRadius: BorderRadius.circular(10), // Raio de borda do Container
                    border: Border.all(width: 1, color: Color(0xFFCDCC07)), // Cor da borda do Container
                  ),
                  child: Text(
                    label,
                    style: TextStyle(color: Color(0xFFCDCC07)), // Cor do texto do label
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

