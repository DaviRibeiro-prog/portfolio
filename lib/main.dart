import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:simple_icons/simple_icons.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const PortfolioApp());
}

const _ink = Color(0xFF132A27);
const _muted = Color(0xFF687773);
const _paper = Color(0xFFF7F8F5);
const _green = Color(0xFFB8F36B);

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Davi Ribeiro | Software Engineer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: _paper,
        colorScheme: ColorScheme.fromSeed(seedColor: _ink),
        fontFamily: 'Arial',
      ),
      home: const PortfolioPage(),
    );
  }
}

class _PortfolioCopy {
  const _PortfolioCopy(this.language);

  final String language;

  String operator [](String key) =>
      _values[language]?[key] ?? _values['en']![key]!;

  static const Map<String, Map<String, String>> _values = {
    'pt': {
      'nav_projects': 'Projetos',
      'nav_about': 'Sobre mim',
      'download_cv': 'Download CV',
      'role': 'SOFTWARE ENGINEER',
      'hero_title': 'Software Engineer criando produtos mobile e web.',
      'hero_intro':
          'Sou Davi, engenheiro de software com experiência em aplicações mobile e web. Gosto de transformar desafios complexos em experiências simples, confiáveis e úteis.',
      'projects_button': 'Ver projetos',
      'experience': 'anos de experiência',
      'active_users': 'usuários ativos/mês',
      'faster_with_ai': 'mais velocidade com IA',
      'ai_strip': 'IA aplicada ao desenvolvimento',
      'ai_tools': 'Claude Code  ·  Copilot  ·  MCP  ·  RAG  ·  Agentes de IA',
      'ai_speed': 'ENTREGAS ATÉ 3X MAIS RÁPIDAS',
      'projects_eyebrow': 'TRABALHOS SELECIONADOS',
      'projects_title': 'Projetos que viraram produto.',
      'projects_subtitle':
          'Experiências reais de aplicações mobile, plataformas educacionais e produtos digitais.',
      'tractian_title': 'Overview · App de manutenção',
      'tractian_intro':
          'Uma reconstrução da tela Overview do app TRACTIAN — unindo arquitetura, experiência de uso e grandes volumes de dados.',
      'tractian_b1':
          'Contribuí para um produto com +20.000 usuários ativos mensais e sessões médias de +10 minutos.',
      'tractian_b2':
          'Reconstruí a tela Overview: arquitetura, interface, filtros e integração REST para grandes volumes de dados.',
      'tractian_b3':
          'Participei de code reviews, testes e fluxos CI/CD, colaborando com engenharia, QA, UX/UI e hardware.',
      'bindemy_courses_title': 'Cursos · Plataforma de ensino',
      'bindemy_courses_intro':
          'Uma plataforma educacional com cursos e pagamentos integrados, criada para conectar instituições e estudantes.',
      'bindemy_courses_b1':
          'Liderei a criação de uma plataforma de cursos com pagamentos integrados, adotada por 7 instituições.',
      'bindemy_courses_b2':
          'Os apps educacionais atenderam mais de 2.000 estudantes e o aplicativo de cursos ultrapassou 1.000 downloads.',
      'bindemy_courses_b3':
          'Usei Claude Code, Copilot e MCP para entregar funcionalidades até 3x mais rápido — de 1–2 semanas para 2–3 dias.',
      'bindemy_plantao_title': 'Plantões · Perguntas e respostas',
      'bindemy_plantao_intro':
          'Um app que aproxima estudantes e professores em conversas de perguntas e respostas em tempo real.',
      'bindemy_plantao_b1':
          'Desenvolvi de ponta a ponta um app de perguntas e respostas que conecta estudantes e professores.',
      'bindemy_plantao_b2':
          'Implementei chat em tempo real com WebSockets, validação de mensagens, gestão de mídia e pagamentos.',
      'bindemy_plantao_b3':
          'Lançamento do produto em pouco mais de 1 mês, com desenvolvimento acelerado por IA e ferramentas como Copilot.',
      'bindemy_plantao_b4':
          'Com Claude e Copilot, reduzi a entrega de funcionalidades e correções de 1–2 semanas para 2–3 dias — até 3x mais rápido.',
      'google_play': 'Google Play',
      'payments': 'Pagamentos',
      'unit_testing': 'Testes Unitários',
      'view_gallery': 'Ver galeria',
      'about_eyebrow': 'UM POUCO SOBRE MIM',
      'about_title': 'Código com propósito. Produto com cuidado.',
      'about_summary':
          'Tenho quatro anos de experiência profissional entregando e mantendo aplicações em produção, incluindo produtos com mais de 20 mil usuários ativos mensais. Minha principal especialidade é Dart e Flutter, com experiência adicional em TypeScript, Java e Spring Boot.\n\nAtuo em todo o ciclo de desenvolvimento: arquitetura, novas funcionalidades, integração de APIs, testes, revisão de código, investigação de problemas e melhorias de UI/UX. Também uso ferramentas de IA de forma estruturada para acelerar tarefas e entregas, mantendo decisões de arquitetura, qualidade e fundamentos de engenharia no centro do processo.',
      'skills_title': 'MINHA CAIXA DE FERRAMENTAS',
      'skill_mobile': 'Mobile & Linguagens',
      'skill_mobile_value':
          'Dart · Flutter · Java · Spring Boot · TypeScript · JavaScript · Python',
      'skill_arch': 'Arquitetura & Qualidade',
      'skill_arch_value':
          'Clean Architecture · SOLID · Design Patterns · Testes Unitários · Code Review',
      'skill_api': 'APIs & Dados',
      'skill_api_value':
          'REST · GraphQL · WebSockets · SQL · Modelagem Relacional · AWS',
      'skill_firebase': 'Firebase',
      'skill_firebase_value':
          'Firestore · Cloud Messaging · Authentication · Realtime Database · Hosting',
      'skill_ai': 'IA & Dados',
      'skill_ai_value':
          'Claude · GPT-4 · Copilot · Agentes de IA · Prompt Engineering · RAG · LLMs · Busca Semântica · Embeddings · Bancos Vetoriais · Chunking de Documentos',
      'skill_tools': 'Ferramentas & Entrega',
      'skill_tools_value':
          'Git · GitHub · GitLab CI/CD · GitHub Actions · Datadog · Figma · Agile',
      'skill_code': 'Qualidade de Código',
      'skill_code_value':
          'Debugging · Troubleshooting · Bug Fixes · Hotfixes de Produção · Refatoração',
      'skill_languages': 'Idiomas',
      'skill_languages_value':
          'Português nativo · Inglês avançado · Espanhol avançado · Russo intermediário',
      'footer': '© 2026 Davi Ribeiro · Feito com cuidado',
      'gallery_close': 'Fechar galeria',
      'gallery_previous': 'Imagem anterior',
      'gallery_next': 'Próxima imagem',
    },
    'en': {
      'nav_projects': 'Projects',
      'nav_about': 'About',
      'download_cv': 'Download CV',
      'role': 'SOFTWARE ENGINEER',
      'hero_title': 'Software Engineer building mobile and web products.',
      'hero_intro':
          'I’m Davi, a software engineer experienced in mobile and web applications. I enjoy turning complex challenges into simple, reliable, and useful experiences.',
      'projects_button': 'View projects',
      'experience': 'years of experience',
      'active_users': 'monthly active users',
      'faster_with_ai': 'faster with AI',
      'ai_strip': 'AI applied to development',
      'ai_tools': 'Claude Code  ·  Copilot  ·  MCP  ·  RAG  ·  AI agents',
      'ai_speed': 'DELIVERING UP TO 3X FASTER',
      'projects_eyebrow': 'SELECTED WORK',
      'projects_title': 'Projects turned into products.',
      'projects_subtitle':
          'Real-world mobile applications, educational platforms, and digital products.',
      'tractian_title': 'Overview · Maintenance app',
      'tractian_intro':
          'A rebuild of TRACTIAN’s app Overview screen — combining architecture, user experience, and large volumes of data.',
      'tractian_b1':
          'Contributed to a product with +50,000 monthly active users and average sessions over +10 minutes.',
      'tractian_b2':
          'Rebuilt the Overview screen: architecture, UI, filters, and REST integration for large volumes of data.',
      'tractian_b3':
          'Took part in code reviews, testing, and CI/CD workflows with engineering, QA, UX/UI, and hardware teams.',
      'bindemy_courses_title': 'Courses · Learning platform',
      'bindemy_courses_intro':
          'An educational platform with integrated courses and payments, built to connect institutions and students.',
      'bindemy_courses_b1':
          'Led development of a course platform with integrated payments, adopted by 7 institutions.',
      'bindemy_courses_b2':
          'The educational apps served 2,000+ students, and the course app exceeded 1,000 downloads.',
      'bindemy_courses_b3':
          'Used Claude Code, Copilot, and MCP to ship features up to 3x faster — from 1–2 weeks down to 2–3 days.',
      'bindemy_plantao_title': 'Plantões · Student Q&A',
      'bindemy_plantao_intro':
          'An app connecting students and teachers through real-time question-and-answer conversations.',
      'bindemy_plantao_b1':
          'Independently built an end-to-end Q&A app connecting students and teachers.',
      'bindemy_plantao_b2':
          'Implemented real-time WebSocket chat, message validation, media management, and payments.',
      'bindemy_plantao_b3':
          'Launched the product in just over 1 month, accelerating development with AI tools such as Copilot.',
      'bindemy_plantao_b4':
          'With Claude and Copilot, reduced feature and fix delivery from 1–2 weeks to 2–3 days — up to 3x faster.',
      'google_play': 'Google Play',
      'payments': 'Payments',
      'unit_testing': 'Unit Testing',
      'view_gallery': 'View gallery',
      'about_eyebrow': 'A LITTLE ABOUT ME',
      'about_title': 'Thoughtful code. Products with purpose.',
      'about_summary':
          'I have four years of professional experience delivering and maintaining production applications, including products with 50,000+ monthly active users. My primary expertise is Dart and Flutter, with additional experience in TypeScript, Java, and Spring Boot.\n\nI work across the development lifecycle: architecture, feature delivery, API integrations, testing, code reviews, troubleshooting, and UI/UX improvements. I also use AI tools in a structured way to accelerate tasks and delivery, while keeping architecture decisions, quality, and strong engineering fundamentals at the core of the process.',
      'skills_title': 'MY TOOLKIT',
      'skill_mobile': 'Mobile & Languages',
      'skill_mobile_value':
          'Dart · Flutter · Java · Spring Boot · TypeScript · JavaScript · Python',
      'skill_arch': 'Architecture & Quality',
      'skill_arch_value':
          'Clean Architecture · SOLID · Design Patterns · Unit Testing · Code Review',
      'skill_api': 'APIs & Data',
      'skill_api_value':
          'REST · GraphQL · WebSockets · SQL · Relational Modeling · AWS',
      'skill_firebase': 'Firebase',
      'skill_firebase_value':
          'Firestore · Cloud Messaging · Authentication · Realtime Database · Hosting',
      'skill_ai': 'AI & Data',
      'skill_ai_value':
          'Claude · GPT-4 · Copilot · AI Agents · Prompt Engineering · RAG · LLMs · Semantic Search · Embeddings · Vector Databases · Document Chunking',
      'skill_tools': 'Tools & Delivery',
      'skill_tools_value':
          'Git · GitHub · GitLab CI/CD · GitHub Actions · Datadog · Figma · Agile',
      'skill_code': 'Code Quality',
      'skill_code_value':
          'Debugging · Troubleshooting · Bug Fixes · Production Hotfixes · Refactoring',
      'skill_languages': 'Spoken Languages',
      'skill_languages_value':
          'Native Portuguese · Advanced English · Advanced Spanish · Intermediate Russian',
      'footer': '© 2026 Davi Ribeiro · Made with care',
      'gallery_close': 'Close gallery',
      'gallery_previous': 'Previous image',
      'gallery_next': 'Next image',
    },
    'es': {
      'nav_projects': 'Proyectos',
      'nav_about': 'Sobre mí',
      'download_cv': 'Descargar CV',
      'role': 'INGENIERO DE SOFTWARE',
      'hero_title': 'Ingeniero de software creando productos móviles y web.',
      'hero_intro':
          'Soy Davi, ingeniero de software con experiencia en aplicaciones móviles y web. Me gusta convertir desafíos complejos en experiencias simples, confiables y útiles.',
      'projects_button': 'Ver proyectos',
      'experience': 'años de experiencia',
      'active_users': 'usuarios activos al mes',
      'faster_with_ai': 'más rápido con IA',
      'ai_strip': 'IA aplicada al desarrollo',
      'ai_tools': 'Claude Code  ·  Copilot  ·  MCP  ·  RAG  ·  Agentes de IA',
      'ai_speed': 'ENTREGAS HASTA 3 VECES MÁS RÁPIDAS',
      'projects_eyebrow': 'TRABAJOS SELECCIONADOS',
      'projects_title': 'Proyectos convertidos en productos.',
      'projects_subtitle':
          'Experiencias reales en aplicaciones móviles, plataformas educativas y productos digitales.',
      'tractian_title': 'Overview · App de mantenimiento',
      'tractian_intro':
          'Una reconstrucción de la pantalla Overview de la app TRACTIAN, combinando arquitectura, experiencia de usuario y grandes volúmenes de datos.',
      'tractian_b1':
          'Contribuí a un producto con +20.000 usuarios activos mensuales y sesiones promedio de más de +10 minutos.',
      'tractian_b2':
          'Reconstruí la pantalla Overview: arquitectura, interfaz, filtros e integración REST para grandes volúmenes de datos.',
      'tractian_b3':
          'Participé en code reviews, pruebas y flujos CI/CD con equipos de ingeniería, QA, UX/UI y hardware.',
      'bindemy_courses_title': 'Cursos · Plataforma educativa',
      'bindemy_courses_intro':
          'Una plataforma educativa con cursos y pagos integrados, creada para conectar instituciones y estudiantes.',
      'bindemy_courses_b1':
          'Lideré el desarrollo de una plataforma de cursos con pagos integrados, adoptada por 7 instituciones.',
      'bindemy_courses_b2':
          'Las aplicaciones educativas atendieron a más de 2.000 estudiantes y la app de cursos superó las 1.000 descargas.',
      'bindemy_courses_b3':
          'Usé Claude Code, Copilot y MCP para entregar funcionalidades hasta 3 veces más rápido: de 1–2 semanas a 2–3 días.',
      'bindemy_plantao_title': 'Plantões · Preguntas y respuestas',
      'bindemy_plantao_intro':
          'Una app que conecta estudiantes y profesores mediante conversaciones de preguntas y respuestas en tiempo real.',
      'bindemy_plantao_b1':
          'Desarrollé de forma independiente una app de preguntas y respuestas que conecta estudiantes y profesores.',
      'bindemy_plantao_b2':
          'Implementé chat en tiempo real con WebSockets, validación de mensajes, gestión de medios y pagos.',
      'bindemy_plantao_b3':
          'Lancé el producto en poco más de 1 mes, acelerando el desarrollo con herramientas de IA como Copilot.',
      'bindemy_plantao_b4':
          'Con Claude y Copilot, reduje la entrega de funcionalidades y correcciones de 1–2 semanas a 2–3 días: hasta 3 veces más rápido.',
      'google_play': 'Google Play',
      'payments': 'Pagos',
      'unit_testing': 'Pruebas Unitarias',
      'view_gallery': 'Ver galería',
      'about_eyebrow': 'UN POCO SOBRE MÍ',
      'about_title': 'Código con propósito. Productos con cuidado.',
      'about_summary':
          'Tengo cuatro años de experiencia profesional entregando y manteniendo aplicaciones en producción, incluidos productos con más de 20.000 usuarios activos mensuales. Mi especialidad principal es Dart y Flutter, con experiencia adicional en TypeScript, Java y Spring Boot.\n\nTrabajo en todo el ciclo de desarrollo: arquitectura, nuevas funcionalidades, integración de APIs, pruebas, code review, resolución de problemas y mejoras de UI/UX. También uso herramientas de IA de forma estructurada para acelerar tareas y entregas, manteniendo la arquitectura, la calidad y los fundamentos de ingeniería en el centro del proceso.',
      'skills_title': 'MI CAJA DE HERRAMIENTAS',
      'skill_mobile': 'Móvil y Lenguajes',
      'skill_mobile_value':
          'Dart · Flutter · Java · Spring Boot · TypeScript · JavaScript · Python',
      'skill_arch': 'Arquitectura y Calidad',
      'skill_arch_value':
          'Clean Architecture · SOLID · Design Patterns · Pruebas Unitarias · Code Review',
      'skill_api': 'APIs y Datos',
      'skill_api_value':
          'REST · GraphQL · WebSockets · SQL · Modelado Relacional · AWS',
      'skill_firebase': 'Firebase',
      'skill_firebase_value':
          'Firestore · Cloud Messaging · Authentication · Realtime Database · Hosting',
      'skill_ai': 'IA y Datos',
      'skill_ai_value':
          'Claude · GPT-4 · Copilot · Agentes de IA · Prompt Engineering · RAG · LLMs · Búsqueda Semántica · Embeddings · Bases Vectoriales · División de Documentos',
      'skill_tools': 'Herramientas y Entrega',
      'skill_tools_value':
          'Git · GitHub · GitLab CI/CD · GitHub Actions · Datadog · Figma · Agile',
      'skill_code': 'Calidad de Código',
      'skill_code_value':
          'Debugging · Troubleshooting · Corrección de Errores · Hotfixes de Producción · Refactorización',
      'skill_languages': 'Idiomas',
      'skill_languages_value':
          'Portugués nativo · Inglés avanzado · Español avanzado · Ruso intermedio',
      'footer': '© 2026 Davi Ribeiro · Hecho con dedicación',
      'gallery_close': 'Cerrar galería',
      'gallery_previous': 'Imagen anterior',
      'gallery_next': 'Imagen siguiente',
    },
  };
}

class _LanguageSelector extends StatelessWidget {
  const _LanguageSelector({
    required this.selectedLanguage,
    required this.onSelected,
  });

  final String selectedLanguage;
  final ValueChanged<String> onSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        color: const Color(0xFFEBEFEB),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          for (final language in const ['en', 'pt', 'es'])
            InkWell(
              onTap: () => onSelected(language),
              borderRadius: BorderRadius.circular(25),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 160),
                padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 7),
                decoration: BoxDecoration(
                  color: selectedLanguage == language
                      ? Colors.white
                      : Colors.transparent,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Text(
                  language.toUpperCase(),
                  style: TextStyle(
                    color: selectedLanguage == language ? _ink : _muted,
                    fontSize: 10,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class PortfolioPage extends StatefulWidget {
  const PortfolioPage({super.key});


  static const _cvPaths = {
    'en': 'assets/lib/utils/Davi_Ribeiro_CV_Software_Engineer_EN.pdf',
    'pt': 'assets/lib/utils/Davi_Ribeiro_CV_Software_Engineer_PT.pdf',
    'es': 'assets/lib/utils/Davi_Ribeiro_CV_Software_Engineer_ES.pdf',
  };

  static const _portraitPath =
      'lib/utils/Retrato profesional con camiseta negra - Copia.png';

  @override
  State<PortfolioPage> createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {
  late String _language;

  @override
  void initState() {
    super.initState();
    final systemLanguage =
        WidgetsBinding.instance.platformDispatcher.locale.languageCode;
    _language = systemLanguage == 'en' || systemLanguage == 'es'
        ? systemLanguage
        : 'pt';
  }

  void _selectLanguage(String language) {
    setState(() => _language = language);
  }

  Future<void> _openLink(String url) async {
    final uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw Exception('Não foi possível abrir $url');
    }
  }

  Future<void> _openEmail() async {
    const email = 'davi.ribeirof16@gmail.com';
    final gmailComposeUri = Uri.https('mail.google.com', '/mail/', {
      'view': 'cm',
      'fs': '1',
      'to': email,
    });

    if (await launchUrl(
      gmailComposeUri,
      mode: LaunchMode.externalApplication,
    )) {
      return;
    }

    final mailtoUri = Uri(scheme: 'mailto', path: email);
    if (!await launchUrl(mailtoUri, mode: LaunchMode.externalApplication)) {
      throw Exception('Não foi possível abrir uma mensagem para $email');
    }
  }

Future<void> _downloadCv() async {
    final cvPath = PortfolioPage._cvPaths[_language];

    if (cvPath == null) {
      throw Exception('Currículo não encontrado para este idioma.');
    }

    final uri = Uri.base.resolve(cvPath);

    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw Exception('Não foi possível abrir o currículo.');
    }
  }

  void _goTo(BuildContext context, GlobalKey key) {
    final target = key.currentContext;
    if (target != null) {
      Scrollable.ensureVisible(
        target,
        duration: const Duration(milliseconds: 550),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final projectsKey = GlobalKey();
    final aboutKey = GlobalKey();
    final copy = _PortfolioCopy(_language);

    return Scaffold(
      body: SelectionArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final isMobile = constraints.maxWidth < 900;
            return SingleChildScrollView(
              child: Column(
                children: [
                  _NavigationBar(
                    isMobile: isMobile,
                    copy: copy,
                    selectedLanguage: _language,
                    onLanguageSelected: _selectLanguage,
                    onProjects: () => _goTo(context, projectsKey),
                    onAbout: () => _goTo(context, aboutKey),
                    onDownload: _downloadCv,
                  ),
                  _HeroSection(
                    isMobile: isMobile,
                    copy: copy,
                    portraitPath: PortfolioPage._portraitPath,
                    onProjects: () => _goTo(context, projectsKey),
                    onOpenLink: _openLink,
                    onOpenEmail: _openEmail,
                  ),
                  _AiStrip(isMobile: isMobile, copy: copy),
                  _ProjectsSection(
                    key: projectsKey,
                    isMobile: isMobile,
                    copy: copy,
                    onOpenLink: _openLink,
                  ),
                  _AboutSection(key: aboutKey, isMobile: isMobile, copy: copy),
                  _Footer(copy: copy),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class _NavigationBar extends StatelessWidget {
  const _NavigationBar({
    required this.isMobile,
    required this.copy,
    required this.selectedLanguage,
    required this.onLanguageSelected,
    required this.onProjects,
    required this.onAbout,
    required this.onDownload,
  });

  final bool isMobile;
  final _PortfolioCopy copy;
  final String selectedLanguage;
  final ValueChanged<String> onLanguageSelected;
  final VoidCallback onProjects;
  final VoidCallback onAbout;
  final VoidCallback onDownload;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: _paper,
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 22 : 64,
        vertical: 20,
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1180),
          child: Row(
            children: [
              _BrandMark(compact: isMobile),
              const Spacer(),
              if (!isMobile) ...[
                _NavLink(label: copy['nav_projects'], onTap: onProjects),
                _NavLink(label: copy['nav_about'], onTap: onAbout),
              ],
              _LanguageSelector(
                selectedLanguage: selectedLanguage,
                onSelected: onLanguageSelected,
              ),
              SizedBox(width: isMobile ? 7 : 12),
              _DownloadButton(
                onPressed: onDownload,
                compact: isMobile,
                label: copy['download_cv'],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _BrandMark extends StatelessWidget {
  const _BrandMark({this.compact = false});

  final bool compact;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 34,
          height: 34,
          decoration: BoxDecoration(
            color: _ink,
            borderRadius: BorderRadius.circular(11),
          ),
          alignment: Alignment.center,
          child: const Text(
            'D',
            style: TextStyle(
              color: _green,
              fontSize: 19,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        if (!compact) ...[
          const SizedBox(width: 10),
          const Text(
            'DAVI RIBEIRO',
            style: TextStyle(
              color: _ink,
              fontWeight: FontWeight.w800,
              fontSize: 13,
              letterSpacing: 1.3,
            ),
          ),
        ],
      ],
    );
  }
}

class _NavLink extends StatelessWidget {
  const _NavLink({required this.label, required this.onTap});

  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      style: TextButton.styleFrom(foregroundColor: _muted),
      child: Text(label),
    );
  }
}

class _DownloadButton extends StatelessWidget {
  const _DownloadButton({
    required this.onPressed,
    required this.label,
    this.compact = false,
  });

  final VoidCallback onPressed;
  final String label;
  final bool compact;

  @override
  Widget build(BuildContext context) {
    return FilledButton.icon(
      onPressed: onPressed,
      icon: const Icon(Icons.download_rounded, size: 17),
      label: Text(compact ? 'CV' : label),
      style: FilledButton.styleFrom(
        backgroundColor: _ink,
        foregroundColor: Colors.white,
        padding: EdgeInsets.symmetric(
          horizontal: compact ? 13 : 18,
          vertical: 14,
        ),
        textStyle: const TextStyle(fontWeight: FontWeight.w700),
      ),
    );
  }
}

class _HeroSection extends StatelessWidget {
  const _HeroSection({
    required this.isMobile,
    required this.copy,
    required this.portraitPath,
    required this.onProjects,
    required this.onOpenLink,
    required this.onOpenEmail,
  });

  final bool isMobile;
  final _PortfolioCopy copy;
  final String portraitPath;
  final VoidCallback onProjects;
  final Future<void> Function(String) onOpenLink;
  final Future<void> Function() onOpenEmail;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(
        isMobile ? 22 : 64,
        45,
        isMobile ? 22 : 64,
        72,
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1180),
          child: isMobile
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _HeroPortrait(path: portraitPath, isMobile: true),
                    const SizedBox(height: 35),
                    _HeroCopy(
                      isMobile: true,
                      copy: copy,
                      onProjects: onProjects,
                      onOpenLink: onOpenLink,
                      onOpenEmail: onOpenEmail,
                    ),
                  ],
                )
              : Row(
                  children: [
                    Expanded(
                      flex: 6,
                      child: _HeroCopy(
                        isMobile: false,
                        copy: copy,
                        onProjects: onProjects,
                        onOpenLink: onOpenLink,
                        onOpenEmail: onOpenEmail,
                      ),
                    ),
                    const SizedBox(width: 65),
                    Expanded(
                      flex: 4,
                      child: _HeroPortrait(path: portraitPath, isMobile: false),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}

class _HeroCopy extends StatelessWidget {
  const _HeroCopy({
    required this.isMobile,
    required this.copy,
    required this.onProjects,
    required this.onOpenLink,
    required this.onOpenEmail,
  });

  final bool isMobile;
  final _PortfolioCopy copy;
  final VoidCallback onProjects;
  final Future<void> Function(String) onOpenLink;
  final Future<void> Function() onOpenEmail;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          decoration: BoxDecoration(
            color: const Color(0xFFE9F4DF),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.circle, color: Color(0xFF67A83D), size: 8),
              SizedBox(width: 8),
              Flexible(
                child: Text(
                  copy['role'],
                  style: TextStyle(
                    color: _ink,
                    fontSize: 10,
                    fontWeight: FontWeight.w800,
                    letterSpacing: 1,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        Wrap(
          spacing: 18,
          runSpacing: 10,
          children: [
            _HeroSocialLink(
              icon: Icon(
                SimpleIcons.gmail,
                color: const Color(0xFFEA4335),
                size: 16,
              ),
              label: 'davi.ribeirof16@gmail.com',
              onTap: onOpenEmail,
            ),
            _HeroSocialLink(
              icon: FaIcon(
                FontAwesomeIcons.linkedin,
                color: const Color(0xFF0A66C2),
                size: 16,
              ),
              label: 'LinkedIn',
              onTap: () => onOpenLink('https://www.linkedin.com/in/davirfa/'),
            ),
            _HeroSocialLink(
              icon: Icon(
                SimpleIcons.github,
                color: const Color(0xFF181717),
                size: 16,
              ),
              label: 'GitHub',
              onTap: () => onOpenLink('https://github.com/DaviRibeiro-prog/'),
            ),
          ],
        ),
        const SizedBox(height: 25),
        Text(
          copy['hero_title'],
          style: TextStyle(
            color: _ink,
            fontSize: isMobile ? 43 : 62,
            height: 1.04,
            fontWeight: FontWeight.w800,
            letterSpacing: isMobile ? -1.8 : -3,
          ),
        ),
        const SizedBox(height: 22),
        Text(
          copy['hero_intro'],
          style: const TextStyle(color: _muted, fontSize: 16, height: 1.7),
        ),
        const SizedBox(height: 29),
        Wrap(
          spacing: 12,
          runSpacing: 12,
          children: [
            FilledButton.icon(
              onPressed: onProjects,
              icon: const Icon(Icons.arrow_downward_rounded, size: 17),
              label: Text(copy['projects_button']),
              style: FilledButton.styleFrom(
                backgroundColor: _ink,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 16,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 38),
        Wrap(
          spacing: 24,
          runSpacing: 12,
          children: [
            _HeroMetric(value: '4', label: copy['experience']),
            _HeroMetric(value: '50k+', label: copy['active_users']),
            _HeroMetric(value: '3x', label: copy['faster_with_ai']),
          ],
        ),
      ],
    );
  }
}

class _HeroSocialLink extends StatelessWidget {
  const _HeroSocialLink({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  final Widget icon;
  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            icon,
            const SizedBox(width: 7),
            Text(
              label,
              style: const TextStyle(
                color: _ink,
                fontSize: 12,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(width: 4),
            const Icon(
              Icons.north_east_rounded,
              color: Color(0xFF638657),
              size: 12,
            ),
          ],
        ),
      ),
    );
  }
}

class _HeroMetric extends StatelessWidget {
  const _HeroMetric({required this.value, required this.label});

  final String value;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          value,
          style: const TextStyle(
            color: _ink,
            fontSize: 19,
            fontWeight: FontWeight.w800,
          ),
        ),
        const SizedBox(width: 7),
        Text(label, style: const TextStyle(color: _muted, fontSize: 11)),
      ],
    );
  }
}

class _HeroPortrait extends StatelessWidget {
  const _HeroPortrait({required this.path, required this.isMobile});

  final String path;
  final bool isMobile;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: isMobile ? 310 : 390,
        height: isMobile ? 340 : 430,
        decoration: BoxDecoration(
          color: const Color(0xFFE1E8DF),
          borderRadius: BorderRadius.circular(30),
          boxShadow: const [
            BoxShadow(
              color: Color(0x14132A27),
              blurRadius: 32,
              offset: Offset(0, 16),
            ),
          ],
        ),
        clipBehavior: Clip.antiAlias,
        child: Image.asset(
          path,
          fit: BoxFit.cover,
          alignment: const Alignment(0, -0.15),
          errorBuilder: (context, error, stackTrace) =>
              const Icon(Icons.person_rounded, size: 100, color: _muted),
        ),
      ),
    );
  }
}

class _AiStrip extends StatelessWidget {
  const _AiStrip({required this.isMobile, required this.copy});

  final bool isMobile;
  final _PortfolioCopy copy;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: _ink,
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 22 : 64,
        vertical: 23,
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1180),
          child: Wrap(
            alignment: WrapAlignment.spaceBetween,
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 24,
            runSpacing: 17,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.auto_awesome_rounded, color: _green, size: 19),
                  SizedBox(width: 12),
                  Flexible(
                    child: Text(
                      copy['ai_strip'],
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
              Text(
                copy['ai_tools'],
                style: TextStyle(
                  color: Color(0xFFCED9D1),
                  fontSize: 12,
                  height: 1.6,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ProjectsSection extends StatelessWidget {
  const _ProjectsSection({
    super.key,
    required this.isMobile,
    required this.copy,
    required this.onOpenLink,
  });

  final bool isMobile;
  final _PortfolioCopy copy;
  final Future<void> Function(String) onOpenLink;

  @override
  Widget build(BuildContext context) {
    final projects = [
      _ProjectData(
        company: 'TRACTIAN',
        title: copy['tractian_title'],
        intro: copy['tractian_intro'],
        bullets: [
          copy['tractian_b1'],
          copy['tractian_b2'],
          copy['tractian_b3'],
        ],
        technologies: [
          'Flutter',
          'Dart',
          'React Native',
          'REST APIs',
          'Code Review',
          'GitHub',
          'Figma',
          copy['unit_testing'],
          'CI/CD',
        ],
        images: const [
          'lib/utils/tractian/1.jfif',
          'lib/utils/tractian/2.jfif',
          'lib/utils/tractian/3.jfif',
          'lib/utils/tractian/4.jfif',
        ],
        links: [
          _ProjectLink(
            copy['google_play'],
            'https://play.google.com/store/apps/details?id=com.tractian.app&hl=pt_BR',
          ),
          _ProjectLink('TRACTIAN', 'https://tractian.com/en'),
        ],
        number: '01',
      ),
      _ProjectData(
        company: 'BINDEMY',
        title: copy['bindemy_plantao_title'],
        intro: copy['bindemy_plantao_intro'],
        bullets: [
          copy['bindemy_plantao_b1'],
          copy['bindemy_plantao_b2'],
          copy['bindemy_plantao_b3'],
          copy['bindemy_plantao_b4'],
        ],
        technologies: [
          'Flutter',
          'Dart',
          'WebSockets',
          copy['payments'],
          'Copilot',
          'REST APIs',
          'Firebase',
        ],
        images: const [
          'lib/utils/bindemy/plantões/1.jfif',
          'lib/utils/bindemy/plantões/2.jfif',
        ],
        links: [
          _ProjectLink(
            copy['google_play'],
            'https://play.google.com/store/apps/details?id=com.nextlevel.plantoes&hl=pt_BR',
          ),
          _ProjectLink(
            'Git Hub',
            'https://github.com/DaviRibeiro-prog/plantao_app',
          ),
          _ProjectLink('BINDEMY', 'https://plantoes.bindemy.com.br/'),
        ],
        number: '02',
      ),
      _ProjectData(
        company: 'BINDEMY',
        title: copy['bindemy_courses_title'],
        intro: copy['bindemy_courses_intro'],
        bullets: [
          copy['bindemy_courses_b1'],
          copy['bindemy_courses_b2'],
          copy['bindemy_courses_b3'],
        ],
        technologies: [
          'Flutter',
          'Dart',
          'Copilot',
          copy['payments'],
          'Firebase',
          'AWS Media Storage',
          'REST APIs',
          'FCM',
        ],
        images: const [
          'lib/utils/bindemy/Cursos/1.webp',
          'lib/utils/bindemy/Cursos/2.webp',
        ],
        links: [
          _ProjectLink(
            copy['google_play'],
            'https://play.google.com/store/apps/details?id=com.magnatas.nextlevel&hl=pt_BR',
          ),
        ],
        number: '03',
      ),
    ];

    return Container(
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(
        isMobile ? 22 : 64,
        85,
        isMobile ? 22 : 64,
        95,
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1180),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _SectionHeading(
                eyebrow: copy['projects_eyebrow'],
                title: copy['projects_title'],
                subtitle: copy['projects_subtitle'],
              ),
              const SizedBox(height: 38),
              LayoutBuilder(
                builder: (context, constraints) {
                  if (constraints.maxWidth <= 700) {
                    return Column(
                      children: [
                        for (final project in projects) ...[
                          _ProjectCard(
                            project: project,
                            isMobile: true,
                            onOpenLink: onOpenLink,
                            copy: copy,
                          ),
                          const SizedBox(height: 22),
                        ],
                      ],
                    );
                  }
                  return Column(
                    children: [
                      for (var index = 0; index < projects.length; index += 2)
                        Padding(
                          padding: const EdgeInsets.only(bottom: 22),
                          child: IntrinsicHeight(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Expanded(
                                  child: _ProjectCard(
                                    project: projects[index],
                                    isMobile: false,
                                    onOpenLink: onOpenLink,
                                    copy: copy,
                                  ),
                                ),
                                const SizedBox(width: 22),
                                Expanded(
                                  child: index + 1 < projects.length
                                      ? _ProjectCard(
                                          project: projects[index + 1],
                                          isMobile: false,
                                          onOpenLink: onOpenLink,
                                          copy: copy,
                                        )
                                      : const SizedBox.shrink(),
                                ),
                              ],
                            ),
                          ),
                        ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ProjectData {
  const _ProjectData({
    required this.company,
    required this.title,
    required this.intro,
    required this.bullets,
    required this.technologies,
    required this.links,
    required this.number,
    this.images = const [],
  });

  final String company;
  final String title;
  final String intro;
  final List<String> bullets;
  final List<String> technologies;
  final List<_ProjectLink> links;
  final String number;
  final List<String> images;
}

class _ProjectLink {
  const _ProjectLink(this.label, this.url);

  final String label;
  final String url;
}

class _ProjectCard extends StatelessWidget {
  const _ProjectCard({
    required this.project,
    required this.isMobile,
    required this.onOpenLink,
    required this.copy,
  });

  final _ProjectData project;
  final bool isMobile;
  final Future<void> Function(String) onOpenLink;
  final _PortfolioCopy copy;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: const Color(0xFFE5EAE5)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _ProjectVisual(project: project, isMobile: isMobile, copy: copy),
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 22, 24, 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      project.company,
                      style: const TextStyle(
                        color: Color(0xFF638657),
                        fontSize: 10,
                        fontWeight: FontWeight.w800,
                        letterSpacing: 1.2,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      project.number,
                      style: const TextStyle(
                        color: Color(0xFFAAB5AF),
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 9),
                Text(
                  project.title,
                  style: const TextStyle(
                    color: _ink,
                    fontSize: 21,
                    fontWeight: FontWeight.w800,
                    letterSpacing: -0.5,
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  project.intro,
                  style: const TextStyle(
                    color: _muted,
                    fontSize: 13,
                    height: 1.6,
                  ),
                ),
                const SizedBox(height: 12),
                for (final bullet in project.bullets) ...[
                  _ProjectBullet(text: bullet),
                  const SizedBox(height: 8),
                ],
                const SizedBox(height: 9),
                Wrap(
                  spacing: 7,
                  runSpacing: 7,
                  children: [
                    for (final technology in project.technologies)
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 7,
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xFFF1F4F0),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Text(
                          technology,
                          style: const TextStyle(
                            color: _ink,
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                  ],
                ),
                const SizedBox(height: 19),
                Wrap(
                  spacing: 18,
                  runSpacing: 10,
                  children: [
                    for (final link in project.links)
                      InkWell(
                        onTap: () => onOpenLink(link.url),
                        borderRadius: BorderRadius.circular(8),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                link.label,
                                style: const TextStyle(
                                  color: _ink,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              const SizedBox(width: 5),
                              const Icon(
                                Icons.north_east_rounded,
                                color: Color(0xFF638657),
                                size: 14,
                              ),
                            ],
                          ),
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ProjectVisual extends StatelessWidget {
  const _ProjectVisual({
    required this.project,
    required this.isMobile,
    required this.copy,
  });

  final _ProjectData project;
  final bool isMobile;
  final _PortfolioCopy copy;

  @override
  Widget build(BuildContext context) {
    final height = isMobile ? 205.0 : 220.0;
    if (project.images.isEmpty) {
      return SizedBox(
        height: height,
        child: const Center(child: Icon(Icons.photo_outlined, color: _muted)),
      );
    }

    return SizedBox(
      height: height,
      child: Stack(
        fit: StackFit.expand,
        children: [
          InkWell(
            onTap: () => _showProjectGallery(context, project, 0),
            child: Row(
              children: [
                for (var index = 0; index < project.images.length; index++)
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(
                        right: index == project.images.length - 1 ? 0 : 3,
                      ),
                      child: Image.asset(
                        project.images[index],
                        height: height,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) =>
                            const ColoredBox(
                              color: Color(0xFFE8EEE7),
                              child: Icon(
                                Icons.image_not_supported_outlined,
                                color: _muted,
                              ),
                            ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
          Positioned(
            right: 12,
            bottom: 12,
            child: IgnorePointer(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 7,
                ),
                decoration: BoxDecoration(
                  color: const Color(0xD9132A27),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.open_in_full_rounded,
                      color: Colors.white,
                      size: 13,
                    ),
                    SizedBox(width: 6),
                    Text(
                      copy['view_gallery'],
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showProjectGallery(
    BuildContext context,
    _ProjectData project,
    int initialPage,
  ) {
    showGeneralDialog<void>(
      context: context,
      barrierDismissible: true,
      barrierLabel: copy['gallery_close'],
      barrierColor: Colors.black.withValues(alpha: 0.82),
      transitionDuration: const Duration(milliseconds: 280),
      pageBuilder: (context, animation, secondaryAnimation) =>
          _ProjectGalleryDialog(
            project: project,
            initialPage: initialPage,
            copy: copy,
          ),
      transitionBuilder: (context, animation, secondaryAnimation, child) {
        final curved = CurvedAnimation(
          parent: animation,
          curve: Curves.easeOutCubic,
        );
        return FadeTransition(
          opacity: curved,
          child: ScaleTransition(
            scale: Tween<double>(begin: 0.88, end: 1).animate(curved),
            child: child,
          ),
        );
      },
    );
  }
}

class _ProjectBullet extends StatelessWidget {
  const _ProjectBullet({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 8, right: 9),
          child: Icon(Icons.circle, color: Color(0xFF7A9D6B), size: 5),
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              style: const TextStyle(color: _muted, fontSize: 12, height: 1.55),
              children: _highlightNumbers(text),
            ),
          ),
        ),
      ],
    );
  }
}

List<TextSpan> _highlightNumbers(String text) {
  final spans = <TextSpan>[];
  final numberPattern = RegExp(r'\+?\d[\d,.]*(?:\s?(?:x|%))?');
  var start = 0;
  for (final match in numberPattern.allMatches(text)) {
    if (match.start > start) {
      spans.add(TextSpan(text: text.substring(start, match.start)));
    }
    spans.add(
      TextSpan(
        text: match.group(0),
        style: const TextStyle(color: _ink, fontWeight: FontWeight.w800),
      ),
    );
    start = match.end;
  }
  if (start < text.length) {
    spans.add(TextSpan(text: text.substring(start)));
  }
  return spans;
}

class _ProjectGalleryDialog extends StatefulWidget {
  const _ProjectGalleryDialog({
    required this.project,
    required this.initialPage,
    required this.copy,
  });

  final _ProjectData project;
  final int initialPage;
  final _PortfolioCopy copy;

  @override
  State<_ProjectGalleryDialog> createState() => _ProjectGalleryDialogState();
}

class _ProjectGalleryDialogState extends State<_ProjectGalleryDialog> {
  late final PageController _pageController;
  late int _currentPage;

  @override
  void initState() {
    super.initState();
    _currentPage = widget.initialPage;
    _pageController = PageController(initialPage: widget.initialPage);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _changePage(int delta) {
    final target = (_currentPage + delta).clamp(
      0,
      widget.project.images.length - 1,
    );
    _pageController.animateToPage(
      target,
      duration: const Duration(milliseconds: 320),
      curve: Curves.easeInOutCubic,
    );
  }

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.sizeOf(context).width < 700;
    return SafeArea(
      child: Dialog(
        backgroundColor: const Color(0xFF101A18),
        insetPadding: EdgeInsets.all(isMobile ? 12 : 42),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        clipBehavior: Clip.antiAlias,
        child: SizedBox(
          width: 1100,
          height: isMobile ? null : 720,
          child: Column(
            mainAxisSize: isMobile ? MainAxisSize.min : MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(18, 10, 10, 10),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        widget.project.title,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Text(
                      '${_currentPage + 1} / ${widget.project.images.length}',
                      style: const TextStyle(
                        color: Colors.white70,
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(width: 8),
                    IconButton(
                      tooltip: widget.copy['gallery_close'],
                      onPressed: () => Navigator.of(context).pop(),
                      icon: const Icon(
                        Icons.close_rounded,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    PageView.builder(
                      controller: _pageController,
                      itemCount: widget.project.images.length,
                      onPageChanged: (page) =>
                          setState(() => _currentPage = page),
                      itemBuilder: (context, index) => Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: isMobile ? 14 : 64,
                          vertical: 12,
                        ),
                        child: InteractiveViewer(
                          minScale: 1,
                          maxScale: 4,
                          child: Image.asset(
                            widget.project.images[index],
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    if (_currentPage > 0)
                      Positioned(
                        left: 10,
                        child: _GalleryArrow(
                          icon: Icons.chevron_left_rounded,
                          tooltip: widget.copy['gallery_previous'],
                          onPressed: () => _changePage(-1),
                        ),
                      ),
                    if (_currentPage < widget.project.images.length - 1)
                      Positioned(
                        right: 10,
                        child: _GalleryArrow(
                          icon: Icons.chevron_right_rounded,
                          tooltip: widget.copy['gallery_next'],
                          onPressed: () => _changePage(1),
                        ),
                      ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 8,
                  children: [
                    for (
                      var index = 0;
                      index < widget.project.images.length;
                      index++
                    )
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 180),
                        width: _currentPage == index ? 22 : 7,
                        height: 7,
                        decoration: BoxDecoration(
                          color: _currentPage == index
                              ? _green
                              : Colors.white38,
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _GalleryArrow extends StatelessWidget {
  const _GalleryArrow({
    required this.icon,
    required this.tooltip,
    required this.onPressed,
  });

  final IconData icon;
  final String tooltip;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton.filled(
      tooltip: tooltip,
      onPressed: onPressed,
      style: IconButton.styleFrom(
        backgroundColor: const Color(0xCC132A27),
        foregroundColor: Colors.white,
        minimumSize: const Size(46, 46),
      ),
      icon: Icon(icon, size: 28),
    );
  }
}

class _SectionHeading extends StatelessWidget {
  const _SectionHeading({
    required this.eyebrow,
    required this.title,
    required this.subtitle,
  });

  final String eyebrow;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          eyebrow,
          style: const TextStyle(
            color: Color(0xFF638657),
            fontSize: 10,
            fontWeight: FontWeight.w800,
            letterSpacing: 1.4,
          ),
        ),
        const SizedBox(height: 13),
        Text(
          title,
          style: const TextStyle(
            color: _ink,
            fontSize: 36,
            fontWeight: FontWeight.w800,
            letterSpacing: -1.5,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          subtitle,
          style: const TextStyle(color: _muted, fontSize: 14, height: 1.6),
        ),
      ],
    );
  }
}

class _AboutSection extends StatelessWidget {
  const _AboutSection({super.key, required this.isMobile, required this.copy});

  final bool isMobile;
  final _PortfolioCopy copy;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0xFFEDF1EB),
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 22 : 64,
        vertical: 82,
      ),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1180),
          child: isMobile
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _AboutCopy(copy: copy),
                    const SizedBox(height: 35),
                    _SkillsPanel(copy: copy),
                  ],
                )
              : Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(flex: 5, child: _AboutCopy(copy: copy)),
                    const SizedBox(width: 70),
                    Expanded(flex: 4, child: _SkillsPanel(copy: copy)),
                  ],
                ),
        ),
      ),
    );
  }
}

class _AboutCopy extends StatelessWidget {
  const _AboutCopy({required this.copy});

  final _PortfolioCopy copy;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _SectionHeading(
          eyebrow: copy['about_eyebrow'],
          title: copy['about_title'],
          subtitle: '',
        ),
        const SizedBox(height: 18),
        Text(
          copy['about_summary'],
          style: const TextStyle(color: _muted, fontSize: 14, height: 1.8),
        ),
      ],
    );
  }
}

class _SkillsPanel extends StatelessWidget {
  const _SkillsPanel({required this.copy});

  final _PortfolioCopy copy;

  @override
  Widget build(BuildContext context) {
    final groups = [
      (copy['skill_mobile'], copy['skill_mobile_value']),
      (copy['skill_arch'], copy['skill_arch_value']),
      (copy['skill_api'], copy['skill_api_value']),
      (copy['skill_firebase'], copy['skill_firebase_value']),
      (copy['skill_ai'], copy['skill_ai_value']),
      (copy['skill_tools'], copy['skill_tools_value']),
      (copy['skill_code'], copy['skill_code_value']),
      (copy['skill_languages'], copy['skill_languages_value']),
    ];

    return Container(
      padding: const EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            copy['skills_title'],
            style: const TextStyle(
              color: _ink,
              fontSize: 12,
              fontWeight: FontWeight.w800,
              letterSpacing: 0.8,
            ),
          ),
          const SizedBox(height: 20),
          for (var index = 0; index < groups.length; index++) ...[
            if (index > 0) const Divider(height: 22, color: Color(0xFFECF0EC)),
            Text(
              groups[index].$1,
              style: const TextStyle(
                color: _ink,
                fontSize: 12,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              groups[index].$2,
              style: const TextStyle(color: _muted, fontSize: 11, height: 1.6),
            ),
          ],
        ],
      ),
    );
  }
}

class _Footer extends StatelessWidget {
  const _Footer({required this.copy});

  final _PortfolioCopy copy;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(22, 0, 22, 0),
      child: Text(
        copy['footer'],
        textAlign: TextAlign.center,
        style: TextStyle(color: _muted, fontSize: 11),
      ),
    );
  }
}
