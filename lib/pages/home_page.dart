import 'package:flutter/material.dart';
import 'package:meu_app_barber/components/menu_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MenuButton(
            title: "Agenda",
            icon: Icon(Icons.calendar_month),
          ),
          MenuButton(
            title: "Profissionais",
            icon: Icon(Icons.people),
          ),
          MenuButton(
            title: "Comissões",
            icon: Icon(Icons.attach_money),
          ),
          MenuButton(
            title: "Serviços",
            icon: Icon(Icons.cut),
          ),
          MenuButton(
            title: "Produtos",
            icon: Icon(Icons.inventory_2),
          ),
          MenuButton(
            title: "Clientes",
            icon: Icon(Icons.diversity_3),
          ),
          MenuButton(
            title: "Fluxo de Caixa",
            icon: Icon(Icons.currency_exchange),
          ),
          MenuButton(
            title: "Financeiros",
            icon: Icon(Icons.account_balance),
          ),
          MenuButton(
            title: "Configurações",
            icon: Icon(Icons.settings),
          ),
          MenuButton(
            title: "Sair",
            icon: Icon(Icons.close),
          ),
        ],
      ),
      appBar: AppBar(
          title: const Text("Fabio Salão Barbearia",
              style: TextStyle(
                color: Colors.black,
              )),
          backgroundColor: Colors.grey),
    );
  }
}
