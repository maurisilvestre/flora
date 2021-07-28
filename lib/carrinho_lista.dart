import 'dart:math';

import 'package:flora/carrinho.dart';
import 'package:flora/entities/item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

final carrinho = Carrinho();

class CarrinhoLista extends StatefulWidget {
  const CarrinhoLista({Key? key}) : super(key: key);

  @override
  _CarrinhoListaState createState() => _CarrinhoListaState();
}

class _CarrinhoListaState extends State<CarrinhoLista> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carrinho de Compras'),
      ),
      body: Center(
        child: Observer(
          builder: (context) => ListView.builder(
            itemCount: carrinho.listaCarrinho.length,
            itemBuilder: (_, index) {
              return Card(
                child: ListTile(
                  title: Text(carrinho.listaCarrinho[index].nomeFrom),
                  subtitle: Text(carrinho.listaCarrinho[index].nomeTo),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    print('Tap com sucesso');
                  },
                  onLongPress: () {
                    carrinho.del(carrinho.listaCarrinho[index]);
                  },
                ),
              );
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          var from = new Random();
          var to = new Random();
          carrinho.add(
            Item(
              nomeFrom: from.hashCode.toString(),
              nomeTo: to.hashCode.toString(),
            ),
          );
        },
      ),
    );
  }
}
