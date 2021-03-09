import 'package:flutter/material.dart';
import 'package:your_book/app/modules/book/widgets/add_page.dart';
import 'package:your_book/app/modules/book/widgets/list_pages.dart';

class BookForm extends StatefulWidget {
  @override
  _BookFormState createState() => _BookFormState();
}

class _BookFormState extends State<BookForm> {
  List<String> listPages;

  @override
  void initState() {
    listPages = List.generate(100, (index) => "item $index");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Titulo",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
              child: TextField(
                minLines: 2,
                maxLines: 10,
                decoration: InputDecoration(
                  labelText: "Descrição",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Paginas:',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            Expanded(
                child: ListPages(
              listPages: listPages,
            )),
          ],
        ),
      ),
    );
  }
}
