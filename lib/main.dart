import 'package:flutter/material.dart';

void main() {
  runApp(const PortfolioApp());
}

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Charishma Portfolio',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Arial',
        scaffoldBackgroundColor: const Color(0xFFF8F9FC),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF4B5CC4),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}

// ======================================================
// HOME SCREEN
// ======================================================

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void openPage(BuildContext context, Widget page) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // NAVBAR
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(
                horizontal: 35,
                vertical: 20,
              ),
              color: Colors.white,
              child: Row(
                children: [
                  const Text(
                    'CHARISHMA.',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF252744),
                    ),
                  ),
                  const Spacer(),

                  TextButton(
                    onPressed: () {},
                    child: const Text('Home'),
                  ),

                  TextButton(
                    onPressed: () {
                      openPage(context, const AboutScreen());
                    },
                    child: const Text('About'),
                  ),

                  TextButton(
                    onPressed: () {
                      openPage(context, const SkillsScreen());
                    },
                    child: const Text('Skills'),
                  ),

                  TextButton(
                    onPressed: () {
                      openPage(context, const ProjectsScreen());
                    },
                    child: const Text('Projects'),
                  ),

                  TextButton(
                    onPressed: () {
                      openPage(context, const ContactScreen());
                    },
                    child: const Text('Contact'),
                  ),
                ],
              ),
            ),

            // HERO SECTION
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(
                horizontal: 40,
                vertical: 100,
              ),
              child: Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(
                    maxWidth: 1100,
                  ),
                  child: LayoutBuilder(
                    builder: (context, constraints) {
                      if (constraints.maxWidth > 750) {
                        return Row(
                          mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: _heroText(context),
                            ),
                            const SizedBox(width: 60),
                            _profileImage(),
                          ],
                        );
                      }

                      return Column(
                        children: [
                          _profileImage(),
                          const SizedBox(height: 45),
                          _heroText(context),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ),

            // SMALL INTRO
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 70,
              ),
              color: Colors.white,
              child: Column(
                children: [
                  const Text(
                    'Passionate about technology and innovation',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF252744),
                    ),
                  ),
                  const SizedBox(height: 18),
                  const Text(
                    'I enjoy learning new technologies and building '
                    'creative solutions to real-world problems.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 17,
                      color: Color(0xFF666666),
                    ),
                  ),
                  const SizedBox(height: 30),

                  ElevatedButton(
                    onPressed: () {
                      openPage(
                        context,
                        const ProjectsScreen(),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          const Color(0xFF4B5CC4),
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 18,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: const Text(
                      'View My Projects',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // FOOTER
            _footer(),
          ],
        ),
      ),
    );
  }

  Widget _heroText(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Hello, I am',
          style: TextStyle(
            fontSize: 20,
            color: Color(0xFF4B5CC4),
            fontWeight: FontWeight.w600,
          ),
        ),

        const SizedBox(height: 10),

        const Text(
          'Charishma',
          style: TextStyle(
            fontSize: 58,
            fontWeight: FontWeight.bold,
            color: Color(0xFF252744),
          ),
        ),

        const SizedBox(height: 10),

        const Text(
          'B.Tech Computer Science Engineering Student',
          style: TextStyle(
            fontSize: 20,
            color: Color(0xFF555555),
            fontWeight: FontWeight.w500,
          ),
        ),

        const SizedBox(height: 20),

        const Text(
          'I am passionate about software development, '
          'Artificial Intelligence, Machine Learning and '
          'creating useful technology solutions.',
          style: TextStyle(
            fontSize: 16,
            height: 1.7,
            color: Color(0xFF666666),
          ),
        ),

        const SizedBox(height: 30),

        Row(
          children: [
            ElevatedButton(
              onPressed: () {
                openPage(
                  context,
                  const AboutScreen(),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF4B5CC4),
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 16,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text('About Me'),
            ),

            const SizedBox(width: 15),

            OutlinedButton(
              onPressed: () {
                openPage(
                  context,
                  const ContactScreen(),
                );
              },
              style: OutlinedButton.styleFrom(
                foregroundColor: const Color(0xFF4B5CC4),
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 16,
                ),
                side: const BorderSide(
                  color: Color(0xFF4B5CC4),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text('Contact Me'),
            ),
          ],
        ),
      ],
    );
  }

  Widget _profileImage() {
    return Container(
      width: 280,
      height: 280,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: const LinearGradient(
          colors: [
            Color(0xFFDCD9FF),
            Color(0xFFB5B0F5),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.10),
            blurRadius: 25,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: const Icon(
        Icons.person,
        size: 140,
        color: Colors.white,
      ),
    );
  }

  Widget _footer() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(25),
      color: const Color(0xFF252744),
      child: const Text(
        '© 2026 Charishma. All Rights Reserved.',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white70,
        ),
      ),
    );
  }
}

// ======================================================
// ABOUT SCREEN
// ======================================================

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return _pageLayout(
      context,
      'About Me',
      Column(
        children: [
          const Icon(
            Icons.person_outline,
            size: 90,
            color: Color(0xFF4B5CC4),
          ),

          const SizedBox(height: 30),

          const Text(
            'About Me',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Color(0xFF252744),
            ),
          ),

          const SizedBox(height: 25),

          const Text(
            'I am a Computer Science Engineering student '
            'interested in software development, Artificial '
            'Intelligence and Machine Learning.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              height: 1.8,
              color: Color(0xFF555555),
            ),
          ),

          const SizedBox(height: 30),

          const Text(
            'I enjoy solving problems, learning new technologies '
            'and developing projects that can create a meaningful '
            'impact.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              height: 1.8,
              color: Color(0xFF555555),
            ),
          ),

          const SizedBox(height: 45),

          _backButton(context),
        ],
      ),
    );
  }
}

// ======================================================
// SKILLS SCREEN
// ======================================================

class SkillsScreen extends StatelessWidget {
  const SkillsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final skills = [
      'C',
      'C++',
      'Python',
      'Java',
      'Flutter',
      'Dart',
      'Git',
      'GitHub',
      'DBMS',
      'AI / ML',
    ];

    return _pageLayout(
      context,
      'My Skills',
      Column(
        children: [
          const Icon(
            Icons.code,
            size: 90,
            color: Color(0xFF4B5CC4),
          ),

          const SizedBox(height: 25),

          const Text(
            'My Skills',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Color(0xFF252744),
            ),
          ),

          const SizedBox(height: 40),

          Wrap(
            spacing: 15,
            runSpacing: 15,
            alignment: WrapAlignment.center,
            children: skills.map((skill) {
              return Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 25,
                  vertical: 16,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: const Color(0xFFDCDCEC),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.04),
                      blurRadius: 8,
                    ),
                  ],
                ),
                child: Text(
                  skill,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF444444),
                  ),
                ),
              );
            }).toList(),
          ),

          const SizedBox(height: 50),

          _backButton(context),
        ],
      ),
    );
  }
}

// ======================================================
// PROJECTS SCREEN
// ======================================================

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return _pageLayout(
      context,
      'My Projects',
      Column(
        children: [
          const Icon(
            Icons.folder_open,
            size: 90,
            color: Color(0xFF4B5CC4),
          ),

          const SizedBox(height: 25),

          const Text(
            'My Projects',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Color(0xFF252744),
            ),
          ),

          const SizedBox(height: 40),

          _projectCard(
            'Content Moderation System',
            'Python',
            'A Python-based intelligent tool for video '
            'content filtering and analysis.',
          ),

          const SizedBox(height: 20),

          _projectCard(
            'Weather Forecast App',
            'Node.js • Java',
            'A dynamic application designed to display '
            'real-time weather information.',
          ),

          const SizedBox(height: 20),

          _projectCard(
            'Portfolio Website',
            'Flutter • Dart',
            'A responsive personal portfolio website '
            'built using Flutter.',
          ),

          const SizedBox(height: 45),

          _backButton(context),
        ],
      ),
    );
  }

  Widget _projectCard(
    String title,
    String technology,
    String description,
  ) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.07),
            blurRadius: 18,
            offset: const Offset(0, 7),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.bold,
              color: Color(0xFF4B5CC4),
            ),
          ),

          const SizedBox(height: 10),

          Text(
            technology,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: Color(0xFF777777),
            ),
          ),

          const SizedBox(height: 12),

          Text(
            description,
            style: const TextStyle(
              fontSize: 16,
              height: 1.6,
              color: Color(0xFF555555),
            ),
          ),
        ],
      ),
    );
  }
}

// ======================================================
// CONTACT SCREEN
// ======================================================

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return _pageLayout(
      context,
      'Contact Me',
      Column(
        children: [
          const Icon(
            Icons.contact_mail,
            size: 90,
            color: Color(0xFF4B5CC4),
          ),

          const SizedBox(height: 25),

          const Text(
            'Contact Me',
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Color(0xFF252744),
            ),
          ),

          const SizedBox(height: 25),

          const Text(
            'Let’s connect and build something amazing together!',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18,
              color: Color(0xFF666666),
            ),
          ),

          const SizedBox(height: 40),

          _contactItem(
            Icons.email,
            'Email',
            'your-email@example.com',
          ),

          const SizedBox(height: 20),

          _contactItem(
            Icons.code,
            'GitHub',
            'github.com/yourusername',
          ),

          const SizedBox(height: 20),

          _contactItem(
            Icons.business_center,
            'LinkedIn',
            'linkedin.com/in/yourusername',
          ),

          const SizedBox(height: 45),

          _backButton(context),
        ],
      ),
    );
  }

  Widget _contactItem(
    IconData icon,
    String title,
    String value,
  ) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            blurRadius: 12,
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(
            icon,
            size: 30,
            color: const Color(0xFF4B5CC4),
          ),

          const SizedBox(width: 20),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),

              const SizedBox(height: 5),

              Text(
                value,
                style: const TextStyle(
                  color: Color(0xFF666666),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// ======================================================
// COMMON PAGE LAYOUT
// ======================================================

Widget _pageLayout(
  BuildContext context,
  String title,
  Widget content,
) {
  return Scaffold(
    backgroundColor: const Color(0xFFF8F9FC),

    appBar: AppBar(
      backgroundColor: const Color(0xFF4B5CC4),
      foregroundColor: Colors.white,
      centerTitle: true,
      title: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
    ),

    body: SingleChildScrollView(
      padding: const EdgeInsets.all(30),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 900,
          ),
          child: content,
        ),
      ),
    ),
  );
}

// ======================================================
// BACK BUTTON
// ======================================================

Widget _backButton(BuildContext context) {
  return ElevatedButton.icon(
    onPressed: () {
      Navigator.pop(context);
    },
    icon: const Icon(Icons.arrow_back),
    label: const Text('Back to Home'),
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color(0xFF4B5CC4),
      foregroundColor: Colors.white,
      padding: const EdgeInsets.symmetric(
        horizontal: 28,
        vertical: 16,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  );
}
