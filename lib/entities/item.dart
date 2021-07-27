import 'package:equatable/equatable.dart';

class Item extends Equatable {
  final String nomeFrom;
  final String nomeTo;

  Item({required this.nomeFrom, required this.nomeTo});

  @override
  List<Object> get props => [nomeFrom, nomeTo];
}
