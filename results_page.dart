import 'package:flutter/material.dart';
import 'package:imc/input_page.dart';
import 'package:imc/reusable_card.dart';
import 'constants.dart';

enum Categoria { normal, sobrepreso, bajo }

class ResultsPage extends StatelessWidget {
  final String bmi;
  final String textResult;
  final String interpretation;

  const ResultsPage(
      {super.key,
      required this.bmi,
      required this.textResult,
      required this.interpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'RESULTADOS',
          style: kAppBarTextStyle,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Text(
            'Tu Resultado',
            style: kNumberTextStyle.copyWith(
                fontSize: 50,
                fontWeight: FontWeight.w800,
                color: Color(0xe8ffffff)),
          ),
          Expanded(
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    child: Column(
                      children: [
                        Center(
                          child: Text(
                            textResult,
                            style: TextStyle(
                                color: kPink,
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                                letterSpacing: 4),
                          ),
                        ),
                        Center(
                          child: Text(
                            bmi,
                            style: kNumberTextStyle.copyWith(fontSize: 90),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Center(
                          child: Text(
                            'Rango normal de IMC:',
                            style: TextStyle(
                                color: kGrayColor,
                                fontSize: 20,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          '18.5 - 25 kg/m2',
                          style: kTransparentWhite,
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 35),
                      alignment: Alignment.center,
                      child: Text(
                        interpretation,
                        style: kTransparentWhite,
                        maxLines: 2,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      padding: EdgeInsets.all(32),
                      decoration: BoxDecoration(
                          border: Border.all(color: kPink, width: 4),
                          borderRadius: BorderRadius.circular(25)),
                      child: Text(
                        'GUARDAR RESULTADO',
                        style: TextStyle(
                            color: Color(0xe677E7EB),
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            letterSpacing: 4),
                      ),
                    ),
                  ),
                ],
              ),
              borderColour: Colors.transparent,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              padding: EdgeInsets.only(bottom: 14),
              color: kBlueColor,
              margin: EdgeInsets.only(top: 10),
              width: double.infinity,
              height: kBottomContainerHeight,
              child: Center(
                child: Text(
                  'RE-CALCULAR IMC',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 20),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
