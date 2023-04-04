import 'package:flutter/material.dart';

class StepsScreen extends StatefulWidget {

  const StepsScreen({Key? key}) : super(key: key);

  @override
  State<StepsScreen> createState() => _StepsScreenState();
}

class _StepsScreenState extends State<StepsScreen> {
  int _currentStep = 0;
  StepperType stepperType = StepperType.vertical;
  

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
            title: const Text('Stepper'),
          centerTitle: true,
        ),
        body:  Column(
          children: [
            Expanded(
              child: Stepper(
                type: stepperType,
                currentStep: _currentStep,
                onStepTapped: (step) => tapped(step),
                onStepContinue:  continued,
                onStepCancel: cancel,
                steps: <Step>[
                  Step(
                    title: const Text('Cuenta'),
                    content: Column(
                      children: <Widget>[
                        TextFormField(
                          decoration: const InputDecoration(labelText: 'Nombre de usuario'),
                        ),
                        TextFormField(
                          decoration: const InputDecoration(labelText: 'contraseña'),
                        ),
                      ],
                    ),
                    isActive: _currentStep >= 0,
                    state: _currentStep >= 0 ?
                    StepState.complete : StepState.disabled,
                  ),
                  Step(
                    title: const Text('Email'),
                    content: Column(
                      children: <Widget>[
                        TextFormField(
                          decoration: const InputDecoration(labelText: 'Email'),
                        ),
                      ],
                    ),
                    isActive: _currentStep >= 0,
                    state: _currentStep >= 1 ?
                    StepState.complete : StepState.disabled,
                  ),
                  Step(
                    title: const Text('Numero de telefono'),
                    content: Column(
                      children: <Widget>[
                        TextFormField(
                          decoration: const InputDecoration(labelText: 'Numero de telefono'),
                        ),
                      ],
                    ),
                    isActive:_currentStep >= 0,
                    state: _currentStep >= 2 ?
                    StepState.complete : StepState.disabled,
                  ),
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: switchStepsType,
          child: const Icon(Icons.change_circle),
        ),

    );
  }
  switchStepsType() {
    setState(() => stepperType == StepperType.vertical
        ? stepperType = StepperType.horizontal
        : stepperType = StepperType.vertical);
  }

  tapped(int step){
    setState(() => _currentStep = step);
  }

  continued(){
    _currentStep < 2 ?
        setState(() => _currentStep += 1): null;
  }
  cancel(){
    _currentStep > 0 ?
        setState(() => _currentStep -= 1) : null;
  }
}