// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'carrinho.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Carrinho on _Carrinho, Store {
  final _$listaCarrinhoAtom = Atom(name: '_Carrinho.listaCarrinho');

  @override
  ObservableList<Item> get listaCarrinho {
    _$listaCarrinhoAtom.reportRead();
    return super.listaCarrinho;
  }

  @override
  set listaCarrinho(ObservableList<Item> value) {
    _$listaCarrinhoAtom.reportWrite(value, super.listaCarrinho, () {
      super.listaCarrinho = value;
    });
  }

  final _$_CarrinhoActionController = ActionController(name: '_Carrinho');

  @override
  dynamic add(Item value) {
    final _$actionInfo =
        _$_CarrinhoActionController.startAction(name: '_Carrinho.add');
    try {
      return super.add(value);
    } finally {
      _$_CarrinhoActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic del(Item value) {
    final _$actionInfo =
        _$_CarrinhoActionController.startAction(name: '_Carrinho.del');
    try {
      return super.del(value);
    } finally {
      _$_CarrinhoActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic get(Item value) {
    final _$actionInfo =
        _$_CarrinhoActionController.startAction(name: '_Carrinho.get');
    try {
      return super.get(value);
    } finally {
      _$_CarrinhoActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
listaCarrinho: ${listaCarrinho}
    ''';
  }
}
