import 'package:intl/intl.dart';

class Formatters {
  static String? formatarData(DateTime data) {
    try {
      DateFormat _format = DateFormat('dd/MM/yyyy');
      String validade = _format.format(data);
      return validade;
    } catch (e) {
      return null;
    }
  }

  static String? formatarDataHora(DateTime data) {
    try {
      final f = new DateFormat('dd/MM/yyyy HH:mm:ss');
      String validade = f.format(data);
      print(validade);
      return validade;
    } catch (e) {
      return '$e';
    }
  }

  static String? formatarMoeda(num? valor) {
    try {
      var f = NumberFormat.currency(locale: 'pt-BR', symbol: '');
      return f.format(valor).trim();
    } catch (e) {
      return null;
    }
  }

  static String? formatarNumero(num? numero) {
    try {
      var f = NumberFormat.decimalPattern('pt-BR');
      return f.format(numero);
    } catch (e) {
      return null;
    }
  }

  static bool? strToBool(String? condition) {
    try {
      if (condition == 'true') {
        return true;
      } else {
        return false;
      }
    } catch (e) {
      return false;
    }
  }
}
