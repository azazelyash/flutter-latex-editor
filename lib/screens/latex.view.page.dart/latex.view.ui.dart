import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_tex/flutter_tex.dart';
import 'package:latex_editor/screens/provider/latex.editor.provider.dart';
import 'package:provider/provider.dart';

class LatexViewPage extends StatefulWidget {
  const LatexViewPage({super.key});

  @override
  State<LatexViewPage> createState() => _LatexViewPageState();
}

class _LatexViewPageState extends State<LatexViewPage> {
  final TeXViewRenderingEngine renderingEngine = const TeXViewRenderingEngine.mathjax();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: const Text(
          "Preview Code",
        ),
        actions: [
          IconButton(
            splashRadius: 25,
            onPressed: () {
              log("Download PDF File");
            },
            icon: const Icon(
              Icons.download,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
        child: Consumer<LatexEditorProvider>(builder: (context, value, child) {
          return TeXView(
            renderingEngine: renderingEngine,
            child: TeXViewColumn(
              children: [
                TeXViewDocument(
                  value.latexCode,
                  style: const TeXViewStyle(
                    textAlign: TeXViewTextAlign.left,
                    margin: TeXViewMargin.only(top: 10),
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
