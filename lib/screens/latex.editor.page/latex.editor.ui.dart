import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:latex_editor/screens/components/bottom.sheet.button.dart';
import 'package:latex_editor/screens/latex.view.page.dart/latex.view.ui.dart';
import 'package:latex_editor/screens/provider/latex.editor.provider.dart';
import 'package:provider/provider.dart';

class LatexEditorPage extends StatefulWidget {
  const LatexEditorPage({super.key});

  @override
  State<LatexEditorPage> createState() => _LatexEditorPageState();
}

class _LatexEditorPageState extends State<LatexEditorPage> {
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    log("<---------------------------Build--------------------------->");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: const Text(
          'Latex Editor',
        ),
        actions: [
          IconButton(
            splashRadius: 25,
            onPressed: () {
              log("Load File");
            },
            icon: const Icon(
              Icons.file_open_outlined,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Enter Text Here",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Consumer<LatexEditorProvider>(builder: (context, value, child) {
                  return GestureDetector(
                    onTap: () {
                      _controller.clear();
                      value.setLatexCode("");
                      log("Reload");
                    },
                    child: const Icon(
                      Icons.clear,
                    ),
                  );
                }),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: TextField(
                controller: _controller,
                decoration: const InputDecoration(
                  hintText: 'Enter Latex Code Here',
                  border: InputBorder.none,
                ),
                keyboardType: TextInputType.multiline,
                maxLines: null,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
        child: Consumer<LatexEditorProvider>(
          builder: (context, value, child) {
            return BottomNavButton(
              btnFunction: () {
                value.setLatexCode(_controller.text);
                log(value.latexCode);
                Navigator.of(context).push(
                  CupertinoPageRoute(
                    builder: (context) => const LatexViewPage(),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
