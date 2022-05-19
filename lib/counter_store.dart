import 'package:mobx/mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';
part 'counter_store.g.dart';

class CounterStore = _CounterStoreBase with _$CounterStore;

abstract class _CounterStoreBase with Store {
  @observable
  String nome = '';

  @observable
  String idade = '';

  @observable
  String cpf = '';

  @observable
  String cep = '';

  @observable
  String Logradouro = '';



  @observable
  bool isSaved = false;

  @action
  void setNome(String value) {
    nome = value;
    setIsSaved(false);
  }

  @action
  void setIdade(String value) {
    idade = value;
    setIsSaved(false);
  }
   @action
  void setCpf(String value) {
    cpf = value;
    setIsSaved(false);
  }
   @action
  void setCep(String value) {
    cep = value;
    setIsSaved(false);
  }
  @action
  void setLogradouro(String value) {
    Logradouro = value;
    setIsSaved(false);
  }

  @action
  void setIsSaved(bool value) => isSaved = value;

  @action
  Future<void> save() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('nome', nome);
    await prefs.setString('idade', idade);
    await prefs.setString('cpf', cpf);
    await prefs.setString('cep', cep);
    await prefs.setString('logradouro', Logradouro);
    setIsSaved(true);
  }

  @action
  Future<void> load() async {
    final prefs = await SharedPreferences.getInstance();
    setNome(prefs.getString('nome') ?? '');
    setIdade(prefs.getString('idade') ?? '');
    setCpf(prefs.getString('cpf') ?? '');
    setCep(prefs.getString('cep') ?? '');
    setLogradouro(prefs.getString('logradouro') ?? '');
  }

  @computed
  bool get isValid => nome.isNotEmpty && idade.isNotEmpty;
}


