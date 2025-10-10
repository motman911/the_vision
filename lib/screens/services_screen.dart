import 'package:flutter/material.dart';

class ServicesScreen extends StatelessWidget {
  const ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Our Services'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildHeaderSection(context),
              const SizedBox(height: 24),
              _buildServiceCard(
                context,
                Icons.school,
                'University Admissions',
                'We guide students through the entire university application process, from choosing the right institution to submitting applications and securing admission.',
                [
                  'Application assistance',
                  'Document preparation',
                  'University selection guidance',
                  'Interview preparation',
                ],
              ),
              _buildServiceCard(
                context,
                Icons.card_giftcard,
                'Scholarship Programs',
                'Access to various scholarship opportunities for deserving students to pursue their education dreams without financial constraints.',
                [
                  'Scholarship search',
                  'Application support',
                  'Essay writing assistance',
                  'Financial aid counseling',
                ],
              ),
              _buildServiceCard(
                context,
                Icons.work,
                'Career Counseling',
                'Professional career guidance to help students make informed decisions about their future academic and professional paths.',
                [
                  'Career assessment',
                  'Path planning',
                  'Industry insights',
                  'Job market trends',
                ],
              ),
              _buildServiceCard(
                context,
                Icons.translate,
                'Language Programs',
                'Language proficiency courses and test preparation for international university admissions.',
                [
                  'English language courses',
                  'TOEFL/IELTS preparation',
                  'French language programs',
                  'Language certification',
                ],
              ),
              _buildServiceCard(
                context,
                Icons.description,
                'Document Services',
                'Comprehensive document preparation and verification services for smooth application processes.',
                [
                  'Document translation',
                  'Notarization assistance',
                  'Credential evaluation',
                  'Visa documentation',
                ],
              ),
              _buildServiceCard(
                context,
                Icons.flight,
                'Study Abroad Programs',
                'Complete support for students planning to study abroad, including pre-departure orientation and ongoing support.',
                [
                  'Country selection',
                  'Visa application support',
                  'Accommodation assistance',
                  'Pre-departure briefing',
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeaderSection(BuildContext context) {
    return Column(
      children: [
        Icon(
          Icons.business,
          size: 80,
          color: Theme.of(context).colorScheme.primary,
        ),
        const SizedBox(height: 16),
        Text(
          'Comprehensive Educational Services',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        const SizedBox(height: 8),
        Text(
          'Everything you need to achieve your educational goals',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ],
    );
  }

  Widget _buildServiceCard(
    BuildContext context,
    IconData icon,
    String title,
    String description,
    List<String> features,
  ) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  icon,
                  size: 40,
                  color: Theme.of(context).colorScheme.primary,
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Text(
              description,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 12),
            const Divider(),
            const SizedBox(height: 8),
            ...features.map((feature) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.check_circle,
                        size: 20,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          feature,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
