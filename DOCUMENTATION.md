# The Vision App Documentation

## Overview

The Vision is a comprehensive Flutter application designed for an educational consultancy office in Rwanda. The app provides information about services, partner universities, FAQs, and contact details, with a beautiful gallery showcase.

## Features

### 1. Multi-Theme Support
The app supports 5 different themes that users can switch between:
- **Light Theme**: Clean and bright interface
- **Dark Theme**: Easy on the eyes for low-light environments
- **Blue Theme**: Professional blue color scheme
- **Green Theme**: Natural and calming green palette
- **Orange Theme**: Energetic and vibrant orange design

### 2. Pages

#### Home Page
- Welcome banner with app branding
- Quick access cards to all sections
- About section highlighting key features
- Company information footer

#### Services Page
Detailed information about:
- University Admissions assistance
- Scholarship Programs
- Career Counseling
- Language Programs
- Document Services
- Study Abroad Programs

#### Universities Page
Comprehensive list of partner universities including:
- University of Rwanda
- Kigali Independent University
- African Leadership University
- Carnegie Mellon University Africa
- And more...

Each university entry includes:
- Name and location
- Description
- Available programs

#### FAQ Page
Answers to common questions about:
- Services offered
- Application processes
- Scholarship opportunities
- Required documents
- Timeline expectations
- Contact information

#### Contact Page
- Office address and location
- Phone and email contacts
- Business hours
- Contact form for inquiries
- Social media links
- Map section

#### Gallery Page
Visual showcase featuring:
- University tours
- Consultation sessions
- Graduation ceremonies
- Workshop events
- Success stories
- And more...

### 3. Responsive Design

The app automatically adapts to different screen sizes:
- **Mobile**: Optimized for phones (320px - 600px)
- **Tablet**: Enhanced layout for tablets (600px - 900px)
- **Desktop**: Full-featured desktop experience (900px+)

Responsive features include:
- Dynamic grid layouts (2, 3, or 4 columns based on screen width)
- Adaptive navigation (drawer on mobile, expanded on desktop)
- Flexible card layouts
- Scalable typography

### 4. Navigation

Two navigation methods:
1. **Navigation Drawer**: Slide-out menu with all pages
2. **Quick Links**: Direct access cards on home page

## Technical Details

### State Management
- **Provider**: Used for theme management
- **ChangeNotifier**: For reactive theme updates

### Dependencies
```yaml
dependencies:
  flutter: sdk
  provider: ^6.0.5          # State management
  url_launcher: ^6.1.14     # External links
  carousel_slider: ^4.2.1   # Image carousel
  google_fonts: ^6.1.0      # Custom fonts
```

### Architecture
```
lib/
├── main.dart                 # App entry and configuration
├── providers/
│   └── theme_provider.dart   # Theme state management
└── screens/
    ├── home_screen.dart      # Home/landing page
    ├── services_screen.dart  # Services listing
    ├── universities_screen.dart # University partners
    ├── faq_screen.dart       # FAQ section
    ├── contact_screen.dart   # Contact information
    └── gallery_screen.dart   # Image gallery
```

## User Experience

### Theme Switching
Users can change the app theme by:
1. Tapping the palette icon in the app bar
2. Selecting a theme from the dialog
3. The change applies immediately across all screens

### Navigation Flow
1. App opens to Home screen
2. Users can access any section via:
   - Navigation drawer (hamburger menu)
   - Quick link cards on home page
3. Back button returns to previous screen
4. Consistent navigation across all pages

### Form Handling
Contact form includes:
- Input validation
- Clear error messages
- Success feedback
- Form reset after submission

## Customization

### Adding New Themes
1. Open `lib/providers/theme_provider.dart`
2. Add new `AppThemeMode` enum value
3. Create new `ThemeData` configuration
4. Update `getTheme()` switch statement
5. Add option to theme dialog

### Adding New Pages
1. Create new screen file in `lib/screens/`
2. Import in `home_screen.dart`
3. Add navigation in drawer
4. Add quick link card if desired

### Modifying Content
All content is stored directly in the screen files:
- Universities: `universities_screen.dart`
- FAQs: `faq_screen.dart`
- Services: `services_screen.dart`
- Gallery items: `gallery_screen.dart`

## Performance

### Optimization Techniques
- Lazy loading with `ListView.builder` and `GridView.builder`
- `const` constructors where possible
- Efficient state management with Provider
- Image caching (when images are added)
- Minimal rebuilds with Consumer widgets

### Best Practices
- Material Design 3 components
- Accessibility features (semantic labels)
- Responsive layouts
- Smooth animations and transitions

## Testing

The app includes basic tests:
- Widget tests for main screens
- Unit tests for theme provider
- Navigation tests

Run tests with:
```bash
flutter test
```

## Future Enhancements

Potential features for future versions:
- Image uploads for gallery
- Backend integration for contact form
- User authentication
- Saved favorites
- Push notifications
- Multi-language support
- Offline mode with caching
- Analytics integration

## Support

For issues, questions, or contributions:
- GitHub Issues: Report bugs or request features
- Pull Requests: Contribute code improvements
- Documentation: Help improve docs

## License

MIT License - See LICENSE file for details
