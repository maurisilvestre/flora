import 'package:flora/entities/item.dart';
import 'package:flora/carrinho.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Should return a Registro class', () {
    final _item = Item(nomeFrom: 'Mauri', nomeTo: 'Marcelle');

    // final _itemMock = Registro(nomeFrom: 'Mauriiiii', nomeTo: 'Marcelle');
    final _carrinhoCompras = Carrinho();
    _carrinhoCompras.add(_item);

    expect(_item, _carrinhoCompras.get(_item));
    expect(_carrinhoCompras.listaCarrinho.contains(_item), true);
  });
}
