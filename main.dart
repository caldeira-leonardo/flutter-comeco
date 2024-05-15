import 'cartao.dart';
import 'cliente.dart';
import 'compra.dart';
import 'conta.dart';
import 'fatura.dart';

main() {
  var conta = Conta(
      cartao: Cartao(
          ano: 2025, codigo: 123, limite: 20000, mes: 05, numero: '12345657'),
      cliente: Cliente(
          id: '13245',
          cpf: '427.460.248-61',
          nome: 'Leonardo',
          sobrenome: 'Caldeira'),
      faturas: [
        Fatura(
          compras: [Compra(valor: 123, data: '05/24', descricao: 'descricao')],
          ano: 2025,
          mes: 06,
        ),
        Fatura(
          compras: [
            Compra(valor: 200.50, data: '06/24', descricao: 'descricao')
          ],
          ano: 2025,
          mes: 07,
        )
      ]);

  print(conta.cartao.codigo);
}
