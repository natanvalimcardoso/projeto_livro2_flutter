import 'package:flutter/material.dart';
import 'package:projeto_livro2_flutter/card2.dart';
import 'card1.dart';
import 'card2.dart';
import 'card3.dart';

// 1
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  static List<Widget> pages = <Widget>[
    const Card1(),
    const Card2(),
    const Card3(),
  ];

// 9
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Fooderlich',
          // 2
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
      // TODO: Show selected tab
      body: pages[
          _selectedIndex], //selecionar as cores de acordo com o que eu colocar

      // 4
      bottomNavigationBar: BottomNavigationBar(
        // 5
        selectedItemColor: Theme.of(context)
            .textSelectionTheme
            .selectionColor, // icone que seleciono muda cor
        currentIndex:
            _selectedIndex, //Quando o usuário toca em um item da barra de guias, ele chama o _onItemTapped que é manipulador, que atualiza o estado com o correto index. Nesse caso, ele muda a cor.
        onTap: _onItemTapped, //muda de acordo com eu clicar
        // 6
        // ignore: prefer_const_literals_to_create_immutables
        items: <BottomNavigationBarItem>[
          const BottomNavigationBarItem(
            //setando o botao
            icon: Icon(Icons.card_giftcard), // icone do botao
            label: 'Card', //titulo do botao
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card2',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Card3',
          ),
        ],
      ),
    );
  }
}
