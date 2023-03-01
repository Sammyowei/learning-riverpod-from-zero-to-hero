import 'package:example2/providers/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Example2 (Counter app)'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer(
            builder: (context, ref, child) {
              final count = ref.watch(counterProvider);

              return Text(
                count == null ? 'click a button' : count.toString(),
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              );
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton(
                onPressed: ref.read(counterProvider.notifier).increment,
                child: const Icon(Icons.add),
              ),
              FloatingActionButton(
                onPressed: ref.read(counterProvider.notifier).decrement,
                child: const Icon(Icons.remove),
              )
            ],
          ),
        ],
      ),
    );
  }
}
