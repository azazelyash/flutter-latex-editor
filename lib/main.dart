import 'package:flutter/material.dart';
import 'package:latex_editor/screens/latex.editor.page/latex.editor.ui.dart';
import 'package:latex_editor/screens/provider/latex.editor.provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LatexEditorProvider()),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LatexEditorPage(),
      ),
    );
  }
}
