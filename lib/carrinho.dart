import 'package:mobx/mobx.dart';

import 'entities/item.dart';
part 'carrinho.g.dart';

class Carrinho = _Carrinho with _$Carrinho;

abstract class _Carrinho with Store {
  @observable
  late ObservableList<Item> listaCarrinho = ObservableList<Item>();

  @action
  add(Item value) {
    listaCarrinho.add(value);
  }

  @action
  del(Item value) {
    listaCarrinho.remove(value);
  }

  @action
  get(Item value) {
    return listaCarrinho.firstWhere((element) => element == value);
  }
}
