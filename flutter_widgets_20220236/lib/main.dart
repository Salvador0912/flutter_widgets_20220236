import 'package:flutter/material.dart';

void main() {
  runApp(const MiAplicacion());
}

class MiAplicacion extends StatelessWidget {
  const MiAplicacion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widgets',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MiPaginaPrincipal(title: 'Widgets'),
    );
  }
}

class MiPaginaPrincipal extends StatefulWidget {
  const MiPaginaPrincipal({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MiPaginaPrincipal> createState() => _MiPaginaPrincipalState();
}

class _MiPaginaPrincipalState extends State<MiPaginaPrincipal> {
  int _contador = 0;

  void _incrementarContador() {
    setState(() {
      _contador++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Has presionado este botón demasiadas veces:',
              ),
              Text(
                '$_contador',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(height: 20),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    print('Botón Elevado Presionado');
                  },
                  child: Text('Botón Elevado'),
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: Icon(Icons.access_alarm),
              ),
              SizedBox(height: 20),
              Expanded(
                child: Checkbox(
                  value: false,
                  onChanged: (value) {
                    print('Casilla de Verificación Cambiada: $value');
                  },
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(labelText: 'Campo de Texto'),
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: Image.network('https://example.com/image.jpg'),
              ),
              SizedBox(height: 20),
              Expanded(
                child: Divider(),
              ),
              SizedBox(height: 20),
              Expanded(
                child: Switch(
                  value: true,
                  onChanged: (value) {
                    print('Interruptor Cambiado: $value');
                  },
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: Slider(
                  value: 0.5,
                  onChanged: (value) {
                    print('Valor del Deslizador: $value');
                  },
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: Container(
                  color: Colors.blue,
                  width: 50,
                  height: 50,
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: ListTile(
                  title: Text('Elemento de Lista'),
                  leading: Icon(Icons.list),
                  onTap: () {
                    print('Elemento de Lista Presionado');
                  },
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: CircularProgressIndicator(),
              ),
              SizedBox(height: 20),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    print('Botón Expandido Presionado');
                  },
                  child: Text('Botón Expandido'),
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: Text('Este es un Widget de Texto simple'),
              ),
              SizedBox(height: 20),
              Expanded(
                child: PopupMenuButton(
                  itemBuilder: (context) => [
                    PopupMenuItem(
                      child: Text('Elemento de Menú Emergente 1'),
                    ),
                    PopupMenuItem(
                      child: Text('Elemento de Menú Emergente 2'),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: OutlinedButton(
                  onPressed: () {
                    print('Botón Contorneado Presionado');
                  },
                  child: Text('Botón Contorneado'),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementarContador,
        tooltip: 'Incrementar',
        child: const Icon(Icons.add),
      ),
    );
  }
}
