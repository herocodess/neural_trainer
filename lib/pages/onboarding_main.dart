import 'package:flutter/material.dart';
import 'package:neural_trainer/core/constants/image_constants.dart';
import 'package:neural_trainer/core/dimensions/dimensions.dart';
import 'package:neural_trainer/pages/widgets/onboard_item.dart';

class OnboardingMainScreen extends StatefulWidget {
  const OnboardingMainScreen({super.key});

  @override
  State<OnboardingMainScreen> createState() => _OnboardingMainScreenState();
}

class _OnboardingMainScreenState extends State<OnboardingMainScreen> {
  List<Map<String, String>> onboardingItems = <Map<String, String>>[];
  PageController? _pageController;
  int currentPageValue = 0;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) {
        return;
      }
      _pageController = PageController();
      onboardingItems = <Map<String, String>>[
        {
          'title': 'COMENZÁ A VIVIR TU',
          'subTitle': 'NT EXPERIENCE',
          'image': welcomeStart,
        },
        {
          'title': 'CONECTA',
          'subTitle':
              'Conecta tus neuro sensores a la aplicación  Neural Trainer y comienza a aumentar tu rendimiento cognitivo.',
          'image': onboarding1,
        },
        {
          'title': 'ENTRENA',
          'subTitle':
              'Selecciona una actividad creada por el equipo de Neural Trainer o crea tu propio entrenamiento específico.',
          'image': onboarding2,
        },
        {
          'title': 'ANALIZA',
          'subTitle':
              'Monitorea el desempeño de tus atletas, registra sus resultados y compártelos en tiempo real.',
          'image': onboarding3,
        },
      ];
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: PageView.builder(
        physics: const ClampingScrollPhysics(),
        itemCount: onboardingItems.length,
        onPageChanged: getChangedPageAndMoveBar,
        controller: _pageController,
        itemBuilder: (_, __) {
          return OnboardItem(
            item: onboardingItems[__],
            currentPageValue: currentPageValue,
            pageController: _pageController!,
            onboardingItems: onboardingItems,
          );
        },
      ),
    );
  }

  void getChangedPageAndMoveBar(int page) {
    currentPageValue = page;
    setState(() {});
  }
}
