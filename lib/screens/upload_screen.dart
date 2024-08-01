import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../services/document_service.dart';

class UploadScreen extends StatelessWidget {
  const UploadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final documentService = Provider.of<DocumentService>(context);

    return ListView.builder(
      itemCount: documentService.documents.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('Document ${index + 1}'),
          subtitle: Text('Path: ${documentService.documents[index].path}'),
          leading: const Icon(Icons.insert_drive_file),
        );
      },
    );
  }
}
