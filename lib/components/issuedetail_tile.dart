import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(8), // Espaçamento interno
        child: Column(children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.start, // Alinhar ao início (start)
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    child: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(width: 10), // Espaçamento entre o ícone e o texto
                const Text(
                  'Issues',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
           TextFormField(
                decoration: InputDecoration(
                  hintText: 'Título',
                  hintStyle: TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5), // Borda arredondada de 5px
                    borderSide: const BorderSide(
                      color: Color(0xFF30363D), // Cor da borda #30363D
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5), // Borda arredondada de 5px
                    borderSide: const BorderSide(
                      color: Color(0xFF30363D), // Cor da borda #30363D
                    ),
                  ),
                ),
                style: const TextStyle(color: Colors.white),
              ),
        ]),
      ),
    );
  }
}
