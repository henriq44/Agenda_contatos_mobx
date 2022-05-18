// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CounterStore on _CounterStoreBase, Store {
  Computed<bool>? _$isValidComputed;

  @override
  bool get isValid => (_$isValidComputed ??= Computed<bool>(() => super.isValid,
          name: '_CounterStoreBase.isValid'))
      .value;

  late final _$nomeAtom =
      Atom(name: '_CounterStoreBase.nome', context: context);

  @override
  String get nome {
    _$nomeAtom.reportRead();
    return super.nome;
  }

  @override
  set nome(String value) {
    _$nomeAtom.reportWrite(value, super.nome, () {
      super.nome = value;
    });
  }

  late final _$idadeAtom =
      Atom(name: '_CounterStoreBase.idade', context: context);

  @override
  String get idade {
    _$idadeAtom.reportRead();
    return super.idade;
  }

  @override
  set idade(String value) {
    _$idadeAtom.reportWrite(value, super.idade, () {
      super.idade = value;
    });
  }

  late final _$isSavedAtom =
      Atom(name: '_CounterStoreBase.isSaved', context: context);

  @override
  bool get isSaved {
    _$isSavedAtom.reportRead();
    return super.isSaved;
  }

  @override
  set isSaved(bool value) {
    _$isSavedAtom.reportWrite(value, super.isSaved, () {
      super.isSaved = value;
    });
  }

  late final _$saveAsyncAction =
      AsyncAction('_CounterStoreBase.save', context: context);

  @override
  Future<void> save() {
    return _$saveAsyncAction.run(() => super.save());
  }

  late final _$loadAsyncAction =
      AsyncAction('_CounterStoreBase.load', context: context);

  @override
  Future<void> load() {
    return _$loadAsyncAction.run(() => super.load());
  }

  late final _$_CounterStoreBaseActionController =
      ActionController(name: '_CounterStoreBase', context: context);

  @override
  void setNome(String value) {
    final _$actionInfo = _$_CounterStoreBaseActionController.startAction(
        name: '_CounterStoreBase.setNome');
    try {
      return super.setNome(value);
    } finally {
      _$_CounterStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIdade(String value) {
    final _$actionInfo = _$_CounterStoreBaseActionController.startAction(
        name: '_CounterStoreBase.setIdade');
    try {
      return super.setIdade(value);
    } finally {
      _$_CounterStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsSaved(bool value) {
    final _$actionInfo = _$_CounterStoreBaseActionController.startAction(
        name: '_CounterStoreBase.setIsSaved');
    try {
      return super.setIsSaved(value);
    } finally {
      _$_CounterStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
nome: ${nome},
idade: ${idade},
isSaved: ${isSaved},
isValid: ${isValid}
    ''';
  }
}
