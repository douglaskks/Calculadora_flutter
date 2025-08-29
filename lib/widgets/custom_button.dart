import 'package:flutter/material.dart';

sealed class ButtonClick {
  final String value;

  ButtonClick(this.value);
}

class CommonButtonClick extends ButtonClick{
  CommonButtonClick(super.value);
}

class EqualsButtoClick extends ButtonClick{
  EqualsButtoClick(super.value);
}

class ClearButtonClick extends ButtonClick{
  ClearButtonClick(super.value);
}

class ButtonHub extends StatelessWidget {

  final void Function(ButtonClick click)? onButtonClick;

  const ButtonHub({super.key, required this.onButtonClick});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
        color: Color.fromARGB(14, 158, 158, 158),
      ),
      child: Center(
        child: GridView.count(
          shrinkWrap: true,
          crossAxisCount: 4,
          mainAxisSpacing: 40,
          crossAxisSpacing: 15,
          padding: const EdgeInsets.all(4),
          children: [
            Button(
              value: 'AC',
              color: Colors.black,
              colorLetter: Colors.greenAccent,
              onTap: (value) {
                if(onButtonClick != null){
                  onButtonClick!(ClearButtonClick(value));
                }
              }
            ),
            Button(
              value: '+/-',
              color: Colors.black,
              colorLetter: Colors.greenAccent,
              onTap: (value){
                if(onButtonClick != null){
                  onButtonClick!(CommonButtonClick(value));
                }
              },
            ),
            Button(
              value: '%',
              color: Colors.black,
              colorLetter: Colors.greenAccent,
              onTap: (value) {
                if(onButtonClick != null){
                  onButtonClick!(CommonButtonClick(value));
                }
              },  
            ),
            Button(
              value: '/',
              color: Colors.black,
              colorLetter: Colors.red,
              onTap: (value) {
                if(onButtonClick != null){
                  onButtonClick!(CommonButtonClick(value));
                }
              },
            ),
            Button(
              value: '7',
              color: Colors.black,
              colorLetter: Colors.white,
              onTap: (value) {
                if(onButtonClick != null){
                  onButtonClick!(CommonButtonClick(value));
                }
              },
            ),
            Button(
              value: '8',
              color: Colors.black,
              colorLetter: Colors.white,
              onTap: (value) {
                if(onButtonClick != null){
                  onButtonClick!(CommonButtonClick(value));
                }
              },
            ),
            Button(
              value: '9',
              color: Colors.black,
              colorLetter: Colors.white,
              onTap: (value) {
                if(onButtonClick != null){
                  onButtonClick!(CommonButtonClick(value));
                }
              },
            ),
            Button(
              value: '*',
              color: Colors.black,
              colorLetter: Colors.red,
              onTap: (value) {
                if(onButtonClick != null){
                  onButtonClick!(CommonButtonClick(value));
                }
              },  
            ),
            Button(
              value: '4',
              color: Colors.black,
              colorLetter: Colors.white,
              onTap: (value) {
                if(onButtonClick != null){
                  onButtonClick!(CommonButtonClick(value));
                }
              },  
            ),
            Button(
              value: '5',
              color: Colors.black,
              colorLetter: Colors.white,
              onTap: (value) {
                if(onButtonClick != null){
                  onButtonClick!(CommonButtonClick(value));
                }
              },  
            ),
            Button(
              value: '6',
              color: Colors.black,
              colorLetter: Colors.white,
              onTap: (value) {
                if(onButtonClick != null){
                  onButtonClick!(CommonButtonClick(value));
                }
              },  
            ),
            Button(
              value: '-',
              color: Colors.black,
              colorLetter: Colors.red,
              onTap: (value) {
                if(onButtonClick != null){
                  onButtonClick!(CommonButtonClick(value));
                }
              },  
            ),
            Button(
              value: '1',
              color: Colors.black,
              colorLetter: Colors.white,
              onTap: (value) {
                if(onButtonClick != null){
                  onButtonClick!(CommonButtonClick(value));
                }
              },  
            ),
            Button(
              value: '2',
              color: Colors.black,
              colorLetter: Colors.white,
              onTap: (value) {
                if(onButtonClick != null){
                  onButtonClick!(CommonButtonClick(value));
                }
              },  
            ),
            Button(
              value: '3',
              color: Colors.black,
              colorLetter: Colors.white,
              onTap: (value) {
                if(onButtonClick != null){
                  onButtonClick!(CommonButtonClick(value));
                }
              },  
            ),
            Button(
              value: '+',
              color: Colors.black,
              colorLetter: Colors.red,
              onTap: (value) {
                if(onButtonClick != null){
                  onButtonClick!(CommonButtonClick(value));
                }
              },
            ),
            Button(
              value: '',
              color: Colors.black,
              colorLetter: Colors.white,
              onTap: (value) {
                if(onButtonClick != null){
                  onButtonClick!(CommonButtonClick(value));
                }
              },  
            ),
            Button(
              value: '0',
              color: Colors.black,
              colorLetter: Colors.white,
              onTap: (value) {
                if(onButtonClick != null){
                  onButtonClick!(CommonButtonClick(value));
                }
              },  
            ),
            Button(
              value: '.',
              color: Colors.black,
              colorLetter: Colors.white,
              onTap: (value) {
                if(onButtonClick != null){
                  onButtonClick!(CommonButtonClick(value));
                }
              },  
            ),
            Button(
              value: '=',
              color: Colors.black,
              colorLetter: Colors.red,
              onTap: (value) {
                if(onButtonClick != null){
                  onButtonClick!(EqualsButtoClick(value));
                }
              },  
            ),
          ],
        ),
      ),
    );
  }
}

class Button extends StatelessWidget {
  const Button({super.key, required this.value, required this.color, required this.colorLetter, this.onTap});

  final String value;
  final Color? color;
  final Color colorLetter;
  final void Function(String value)? onTap;

  @override
  Widget build(BuildContext context) {

    final color = this.color ?? Theme.of(context).colorScheme.primary;
    final colorLetter = this.colorLetter ?? Theme.of(context).colorScheme.primary;
    
    return Material(
      borderRadius: BorderRadius.circular(16),
      color: color,
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: onTap == null ? null : ()=>onTap!(value),
        child: Container(
          child: Center(
            child: Text(
              value,
              style: TextStyle(
                color: colorLetter,
                fontSize: 25,
              ),
            ),
          ),
        ),
      ),
    );
  }
}