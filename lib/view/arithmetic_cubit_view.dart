import 'package:bloc_starter/cubit/arithmetic_cubit.dart';
// import 'package:bloc_test/cubit/arithmetic_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ArithmeticCubitView extends StatelessWidget {
  final TextEditingController firstController = TextEditingController();
  final TextEditingController secondController = TextEditingController();

  ArithmeticCubitView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Arithmetic Cubit'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // First Number Input
              TextField(
                controller: firstController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter First Number',
                ),
              ),
              const SizedBox(height: 16),

              // Second Number Input
              TextField(
                controller: secondController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Second Number',
                ),
              ),
              const SizedBox(height: 16),

              // Result Display
              BlocBuilder<ArithmeticCubit, double>(
                builder: (context, result) {
                  return Text(
                    'Result: $result',
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  );
                },
              ),
              const SizedBox(height: 16),

              // Add Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    final first = double.tryParse(firstController.text) ?? 0;
                    final second = double.tryParse(secondController.text) ?? 0;
                    context.read<ArithmeticCubit>().add(first, second);
                  },
                  child: const Text('Add'),
                ),
              ),
              const SizedBox(height: 8),

              // Subtract Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    final first = double.tryParse(firstController.text) ?? 0;
                    final second = double.tryParse(secondController.text) ?? 0;
                    context.read<ArithmeticCubit>().subtract(first, second);
                  },
                  child: const Text('Subtract'),
                ),
              ),
              const SizedBox(height: 8),

              // Multiplication Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    final first = double.tryParse(firstController.text) ?? 0;
                    final second = double.tryParse(secondController.text) ?? 0;
                    context.read<ArithmeticCubit>().multiply(first, second);
                  },
                  child: const Text('Multiply'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
