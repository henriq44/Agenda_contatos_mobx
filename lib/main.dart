import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:mobx_aulanew/counter_store.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final CounterStore counter = CounterStore();

  @override
  void initState() {
    counter.load();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldMessenger(
      child: ReactionBuilder(
          builder: (context) {
            return reaction((_) => counter.isSaved, (_) {
              if (counter.isSaved == true) {
                final messenger = ScaffoldMessenger.of(context);
                messenger.showSnackBar(
                    const SnackBar(content: Text('valor salvo com sucesso')));
              }
            }, delay: 400);
          },
          child: Scaffold(
            appBar: AppBar(
              title: const Text(''),
            ),
            body: Observer(builder: (context) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TextFormField(
                      initialValue: counter.nome,
                      decoration: const InputDecoration(
                        labelText: 'nome',
                      ),
                      onChanged: (String value) {
                        counter.setNome(value);
                      },
                    ),
                    TextFormField(
                      initialValue: counter.idade,
                      decoration: const InputDecoration(
                        labelText: 'idade',
                      ),
                      onChanged: (String value) {
                        counter.setIdade(value);
                      },
                    ),
                    ElevatedButton(
                      onPressed: counter.isValid
                          ? () async {
                              counter.save();
                            }
                          : null,
                      child: const Text('botao'),
                    ),
                    const Text(
                      'You have pushed the button this many times:',
                    ),
                  ],
                ),
              );
            }),
          )),
    );
  }
}
