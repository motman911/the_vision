import 'package:flutter/material.dart';

class University {
  final String name;
  final String location;
  final String description;
  final List<String> programs;

  University({
    required this.name,
    required this.location,
    required this.description,
    required this.programs,
  });
}

class UniversitiesScreen extends StatelessWidget {
  const UniversitiesScreen({super.key});

  static final List<University> universities = [
    University(
      name: 'University of Rwanda',
      location: 'Kigali, Rwanda',
      description: 'The largest public university in Rwanda, offering diverse programs in engineering, sciences, business, and humanities.',
      programs: ['Engineering', 'Medicine', 'Business', 'Sciences', 'Arts'],
    ),
    University(
      name: 'Kigali Independent University',
      location: 'Kigali, Rwanda',
      description: 'Leading private university known for excellence in business and technology education.',
      programs: ['Business Administration', 'IT', 'Law', 'Public Health'],
    ),
    University(
      name: 'African Leadership University',
      location: 'Kigali, Rwanda',
      description: 'Pan-African university focused on developing entrepreneurial leaders for Africa.',
      programs: ['Global Challenges', 'Entrepreneurship', 'Software Engineering'],
    ),
    University(
      name: 'Carnegie Mellon University Africa',
      location: 'Kigali, Rwanda',
      description: 'Branch campus offering world-class computer science and engineering programs.',
      programs: ['Computer Science', 'Electrical Engineering', 'Information Technology'],
    ),
    University(
      name: 'Adventist University of Central Africa',
      location: 'Kigali, Rwanda',
      description: 'Faith-based institution offering quality education in various fields.',
      programs: ['Theology', 'Education', 'Business', 'Public Health'],
    ),
    University(
      name: 'Mount Kenya University Rwanda',
      location: 'Kigali, Rwanda',
      description: 'Part of the East African network offering internationally recognized programs.',
      programs: ['Business', 'IT', 'Education', 'Healthcare'],
    ),
    University(
      name: 'UNICAF University',
      location: 'Kigali, Rwanda',
      description: 'Affordable quality education with flexible learning options.',
      programs: ['Business', 'Education', 'Law', 'Public Health'],
    ),
    University(
      name: 'Kepler University',
      location: 'Kigali, Rwanda',
      description: 'Innovative model combining online learning with in-person support.',
      programs: ['Healthcare Management', 'Communications', 'Business'],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Partner Universities'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildHeaderSection(context),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: universities.map((university) {
                  return _buildUniversityCard(context, university);
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeaderSection(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Theme.of(context).colorScheme.primary,
            Theme.of(context).colorScheme.secondary,
          ],
        ),
      ),
      child: Column(
        children: [
          Icon(
            Icons.school,
            size: 60,
            color: Theme.of(context).colorScheme.onPrimary,
          ),
          const SizedBox(height: 16),
          Text(
            'Our Partner Universities',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Top educational institutions we work with',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Theme.of(context).colorScheme.onPrimary.withOpacity(0.9),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildUniversityCard(BuildContext context, University university) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: ExpansionTile(
        leading: CircleAvatar(
          backgroundColor: Theme.of(context).colorScheme.primary,
          child: Icon(
            Icons.school,
            color: Theme.of(context).colorScheme.onPrimary,
          ),
        ),
        title: Text(
          university.name,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Row(
          children: [
            const Icon(Icons.location_on, size: 16),
            const SizedBox(width: 4),
            Expanded(child: Text(university.location)),
          ],
        ),
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  university.description,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: 16),
                Text(
                  'Available Programs:',
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(height: 8),
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: university.programs.map((program) {
                    return Chip(
                      label: Text(program),
                      backgroundColor: Theme.of(context).colorScheme.primaryContainer,
                      labelStyle: TextStyle(
                        color: Theme.of(context).colorScheme.onPrimaryContainer,
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
