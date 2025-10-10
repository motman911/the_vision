import 'package:flutter/material.dart';

class FAQItem {
  final String question;
  final String answer;

  FAQItem({required this.question, required this.answer});
}

class FAQScreen extends StatelessWidget {
  const FAQScreen({super.key});

  static final List<FAQItem> faqs = [
    FAQItem(
      question: 'What services does The Vision offer?',
      answer: 'The Vision offers comprehensive educational consultancy services including university admissions guidance, scholarship assistance, career counseling, language programs, document services, and study abroad support.',
    ),
    FAQItem(
      question: 'How can I apply for university through The Vision?',
      answer: 'You can visit our office for a consultation where our expert counselors will assess your academic background, interests, and goals. We will then guide you through the entire application process, from university selection to final admission.',
    ),
    FAQItem(
      question: 'Are there scholarship opportunities available?',
      answer: 'Yes, we help students access various scholarship programs from both local and international institutions. Our team assists with scholarship searches, application preparation, and essay writing to maximize your chances of success.',
    ),
    FAQItem(
      question: 'What documents do I need for university applications?',
      answer: 'Common documents include academic transcripts, recommendation letters, personal statements, passport copies, and language proficiency test scores (TOEFL/IELTS for international programs). We assist with document preparation and verification.',
    ),
    FAQItem(
      question: 'How long does the application process take?',
      answer: 'The timeline varies depending on the university and program. Generally, it takes 2-6 months from initial consultation to admission decision. We work to ensure timely submission of all applications.',
    ),
    FAQItem(
      question: 'Do you provide visa assistance?',
      answer: 'Yes, for students planning to study abroad, we provide comprehensive visa application support including document preparation, application submission guidance, and interview preparation.',
    ),
    FAQItem(
      question: 'What are your consultation fees?',
      answer: 'Our fees vary depending on the services you require. We offer various packages tailored to different needs. Please visit our office or contact us for detailed pricing information.',
    ),
    FAQItem(
      question: 'Can you help with language test preparation?',
      answer: 'Absolutely! We offer TOEFL and IELTS preparation courses, as well as general English and French language programs to help students meet university language requirements.',
    ),
    FAQItem(
      question: 'Do you work with universities outside Rwanda?',
      answer: 'Yes, we have partnerships with universities across Africa, Europe, North America, and Asia. We help students find the best institutions that match their academic goals and budget.',
    ),
    FAQItem(
      question: 'How do I schedule a consultation?',
      answer: 'You can schedule a consultation by visiting our office in Kigali, calling us, or filling out the contact form on our website. Our team will get back to you within 24 hours to confirm your appointment.',
    ),
    FAQItem(
      question: 'What makes The Vision different from other consultancies?',
      answer: 'We pride ourselves on personalized service, experienced counselors, direct university partnerships, high success rates, comprehensive support throughout the process, and ongoing support even after admission.',
    ),
    FAQItem(
      question: 'Can you help with accommodation arrangements?',
      answer: 'Yes, for students studying abroad, we assist with finding suitable accommodation options including university dormitories, private housing, and homestays, ensuring a smooth transition.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Frequently Asked Questions'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildHeaderSection(context),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: faqs.map((faq) {
                  return _buildFAQCard(context, faq);
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
      color: Theme.of(context).colorScheme.primaryContainer,
      child: Column(
        children: [
          Icon(
            Icons.help_outline,
            size: 60,
            color: Theme.of(context).colorScheme.primary,
          ),
          const SizedBox(height: 16),
          Text(
            'How Can We Help You?',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                ),
          ),
          const SizedBox(height: 8),
          Text(
            'Find answers to common questions',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                ),
          ),
        ],
      ),
    );
  }

  Widget _buildFAQCard(BuildContext context, FAQItem faq) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ExpansionTile(
        leading: Icon(
          Icons.question_answer,
          color: Theme.of(context).colorScheme.primary,
        ),
        title: Text(
          faq.question,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              faq.answer,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }
}
