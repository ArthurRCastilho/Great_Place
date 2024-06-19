import 'package:flutter/material.dart';
import 'package:great_place/widgets/image_input.dart';

class PlaceFormScreen extends StatefulWidget {
  const PlaceFormScreen({super.key});

  @override
  State<PlaceFormScreen> createState() => _PlaceFormScreenState();
}

class _PlaceFormScreenState extends State<PlaceFormScreen> {
  final _titleController = TextEditingController();

  void _submitForm() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Novo lugar? '),
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: <Widget>[
                      TextField(
                        controller: _titleController,
                        decoration: const InputDecoration(
                          labelText: 'Titulo',
                        ),
                      ),
                      const SizedBox(height: 10),
                      const ImageInput(),
                    ],
                  ),
                ),
              ),
            ),
            ElevatedButton.icon(
              onPressed: _submitForm,
              label: const Text(
                'Adicionar',
                style: TextStyle(color: Colors.white),
              ),
              icon: const Icon(
                Icons.add,
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.primary,
                iconColor: Theme.of(context).colorScheme.tertiary,
                overlayColor: Theme.of(context).colorScheme.tertiary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
