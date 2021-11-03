import './fooderlich_theme.dart';
import 'package:flutter/material.dart';

class Card3 extends StatelessWidget {
  const Card3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          constraints: const BoxConstraints.expand(
            width: 350,
            height: 450,
          ),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/cenoura.png'),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          child: Stack(
            children: [
              Container(
                //recipe trends
                // 3
                padding: const EdgeInsets.all(16),
                // 4
                child: Column(
                  // 5
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // 6
                    const Icon(
                      Icons.book,
                      color: Colors.white,
                      size: 40,
                    ),
                    // 7
                    const SizedBox(height: 8),
                    // 8
                    Text(
                      'Recipe Trends',
                      style: FooderlichTheme.darkTextTheme.headline2,
                    ),
                    // 9
                    const SizedBox(height: 30),
                  ],
                ),
              ),
              ///////////////////////
              Center( //adiciona as opções saudavelveganos 
                // 11
                child: Wrap(
                  // 12
                  alignment: WrapAlignment.start,
                  // 13
                  spacing: 12,
                  // 14
                  children: [
                    Chip( //widget de exibição que exibe texto e avatares de imagem, e também executa ações do usuário, como tocar e excluir.
                      label: Text('Healthy',
                          style: FooderlichTheme.darkTextTheme.bodyText1),
                      backgroundColor: Colors.green,
                      onDeleted: () {
                        print('delete');
                      },
                    ),
                    Chip(
                      label: Text('Vegan',
                          style: FooderlichTheme.darkTextTheme.bodyText1),
                      backgroundColor: Colors.green,
                      onDeleted: () {
                        print('delete');
                      },
                    ),
                    Chip(
                      label: Text('Carrots',
                          style: FooderlichTheme.darkTextTheme.bodyText1),
                      backgroundColor: Colors.green,
                      onDeleted: () {
                        print('delete');
                      }
                    ),
                    Chip(
                      label: Text('Apples',
                          style: FooderlichTheme.darkTextTheme.bodyText1),
                      backgroundColor: Colors.black.withOpacity(0.7),
                      
                    ),
                    Chip(
                      label: Text('Oranges',
                          style: FooderlichTheme.darkTextTheme.bodyText1),
                      backgroundColor: Colors.black.withOpacity(0.7),
                      
                    ),
                    Chip(
                      label: Text('Lemons',
                          style: FooderlichTheme.darkTextTheme.bodyText1),
                      backgroundColor: Colors.black.withOpacity(0.7),
                      
                    ),
                    Chip(
                      label: Text('Bananana',
                          style: FooderlichTheme.darkTextTheme.bodyText1),
                      backgroundColor: Colors.black.withOpacity(0.7),
                      
                    ),
                  ],
                ),
              ),
//////////////////////////////////
              Container(
                decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.4), //40% de opacity
                    borderRadius:
                        const BorderRadius.all(Radius.circular(10.0))),
              )
              // TODO 6: Add Container, Column, Icon and Text
              // TODO 7: Add Center widget with Chip widget children
            ],
          )),
    );
  }
}
