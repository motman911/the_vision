import 'package:flutter/material.dart';

class GalleryItem {
  final String title;
  final String description;
  final IconData icon;
  final Color color;

  GalleryItem({
    required this.title,
    required this.description,
    required this.icon,
    required this.color,
  });
}

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({super.key});

  static final List<GalleryItem> galleryItems = [
    GalleryItem(
      title: 'University Tours',
      description: 'Students visiting partner universities',
      icon: Icons.tour,
      color: Colors.blue,
    ),
    GalleryItem(
      title: 'Consultation Sessions',
      description: 'One-on-one counseling with students',
      icon: Icons.people,
      color: Colors.green,
    ),
    GalleryItem(
      title: 'Graduation Ceremonies',
      description: 'Celebrating our students\' success',
      icon: Icons.school,
      color: Colors.purple,
    ),
    GalleryItem(
      title: 'Workshop Events',
      description: 'Educational workshops and seminars',
      icon: Icons.group_work,
      color: Colors.orange,
    ),
    GalleryItem(
      title: 'Success Stories',
      description: 'Students who achieved their dreams',
      icon: Icons.emoji_events,
      color: Colors.amber,
    ),
    GalleryItem(
      title: 'Campus Life',
      description: 'Life at our partner universities',
      icon: Icons.apartment,
      color: Colors.teal,
    ),
    GalleryItem(
      title: 'Study Abroad',
      description: 'Students embarking on international journeys',
      icon: Icons.flight,
      color: Colors.indigo,
    ),
    GalleryItem(
      title: 'Cultural Events',
      description: 'Celebrating diversity and culture',
      icon: Icons.celebration,
      color: Colors.pink,
    ),
    GalleryItem(
      title: 'Academic Excellence',
      description: 'Outstanding academic achievements',
      icon: Icons.star,
      color: Colors.red,
    ),
    GalleryItem(
      title: 'Team Activities',
      description: 'Our dedicated team in action',
      icon: Icons.groups,
      color: Colors.cyan,
    ),
    GalleryItem(
      title: 'Career Fairs',
      description: 'Connecting students with opportunities',
      icon: Icons.work,
      color: Colors.deepOrange,
    ),
    GalleryItem(
      title: 'Language Classes',
      description: 'Language preparation programs',
      icon: Icons.translate,
      color: Colors.lightGreen,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gallery'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildHeaderSection(context),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  final crossAxisCount = constraints.maxWidth > 800
                      ? 4
                      : constraints.maxWidth > 600
                          ? 3
                          : 2;
                  return GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: crossAxisCount,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16,
                      childAspectRatio: 0.85,
                    ),
                    itemCount: galleryItems.length,
                    itemBuilder: (context, index) {
                      return _buildGalleryItem(context, galleryItems[index]);
                    },
                  );
                },
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
            Icons.photo_library,
            size: 60,
            color: Theme.of(context).colorScheme.onPrimary,
          ),
          const SizedBox(height: 16),
          Text(
            'Our Gallery',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Moments that inspire success',
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

  Widget _buildGalleryItem(BuildContext context, GalleryItem item) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () {
          _showImageDialog(context, item);
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      item.color.withOpacity(0.7),
                      item.color,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Center(
                  child: Icon(
                    item.icon,
                    size: 64,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.title,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    item.description,
                    style: Theme.of(context).textTheme.bodySmall,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showImageDialog(BuildContext context, GalleryItem item) {
    showDialog(
      context: context,
      builder: (context) => Dialog(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 600),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 400,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      item.color.withOpacity(0.7),
                      item.color,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Center(
                  child: Icon(
                    item.icon,
                    size: 120,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.title,
                      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      item.description,
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    const SizedBox(height: 16),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text('Close'),
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
