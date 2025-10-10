# The Vision App - Run Instructions

## 🚀 Quick Start

### Prerequisites
- Flutter SDK 3.0.0 or higher
- Dart SDK 3.0.0 or higher
- An IDE (VS Code, Android Studio, or IntelliJ IDEA)

### Check Flutter Installation
```bash
flutter doctor
```

This should show:
- ✓ Flutter (Channel stable, 3.x.x)
- ✓ Dart
- ✓ At least one platform (Android, iOS, Web, etc.)

## 📥 Installation Steps

### 1. Clone the Repository
```bash
git clone https://github.com/motman911/the_vision.git
cd the_vision
```

### 2. Install Dependencies
```bash
flutter pub get
```

Expected output:
```
Running "flutter pub get" in the_vision...
Resolving dependencies...
+ provider 6.0.5
+ url_launcher 6.1.14
+ carousel_slider 4.2.1
+ google_fonts 6.1.0
...
Got dependencies!
```

### 3. Verify Installation
```bash
flutter pub outdated
```

## ▶️ Running the App

### Run on Any Available Device
```bash
flutter run
```

### Run on Specific Platform

#### Web
```bash
flutter run -d chrome
# or
flutter run -d web-server
```

#### Android
```bash
flutter run -d android
# or for a specific device
flutter devices
flutter run -d <device-id>
```

#### iOS (macOS only)
```bash
flutter run -d ios
# or for simulator
flutter run -d iphone
```

#### Desktop - Windows
```bash
flutter run -d windows
```

#### Desktop - macOS
```bash
flutter run -d macos
```

#### Desktop - Linux
```bash
flutter run -d linux
```

## 🧪 Testing

### Run All Tests
```bash
flutter test
```

Expected output:
```
00:02 +4: All tests passed!
```

### Run Tests with Coverage
```bash
flutter test --coverage
```

### Run Specific Test File
```bash
flutter test test/widget_test.dart
```

## 🔍 Code Analysis

### Run Flutter Analyzer
```bash
flutter analyze
```

Expected output:
```
Analyzing the_vision...
No issues found!
```

### Format Code
```bash
dart format lib/
```

## 🏗️ Building

### Build for Release

#### Android APK
```bash
flutter build apk --release
```
Output: `build/app/outputs/flutter-apk/app-release.apk`

#### Android App Bundle
```bash
flutter build appbundle --release
```
Output: `build/app/outputs/bundle/release/app-release.aab`

#### iOS
```bash
flutter build ios --release
```

#### Web
```bash
flutter build web --release
```
Output: `build/web/`

#### Windows
```bash
flutter build windows --release
```
Output: `build/windows/runner/Release/`

#### macOS
```bash
flutter build macos --release
```
Output: `build/macos/Build/Products/Release/`

#### Linux
```bash
flutter build linux --release
```
Output: `build/linux/x64/release/bundle/`

## 🎨 Using the App

### Once Running

1. **Explore the Home Page**
   - View welcome banner
   - See quick link cards
   - Read about section

2. **Navigate to Different Pages**
   - Tap hamburger menu (☰) for drawer
   - Or tap quick link cards
   - All pages accessible

3. **Change Theme**
   - Tap palette icon (🎨) in top-right
   - Select: Light, Dark, Blue, Green, or Orange
   - Theme applies instantly

4. **Explore Services**
   - Navigate to Services page
   - See 6 service categories
   - Read detailed descriptions

5. **View Universities**
   - Navigate to Universities page
   - Tap to expand details
   - See programs offered

6. **Read FAQs**
   - Navigate to FAQ page
   - Tap questions to expand
   - Read answers

7. **Contact Form**
   - Navigate to Contact page
   - Fill out form
   - Submit (validation included)

8. **Browse Gallery**
   - Navigate to Gallery page
   - View grid of items
   - Tap for full view

## 🐛 Troubleshooting

### Issue: Dependencies Not Installing
```bash
flutter clean
flutter pub get
```

### Issue: Build Errors
```bash
flutter clean
flutter pub get
flutter pub upgrade
flutter run
```

### Issue: Hot Reload Not Working
Press `r` in terminal or:
```bash
# Stop app and restart
flutter run
```

### Issue: Theme Not Changing
- Ensure you're selecting a theme option
- Check if dialog closes after selection
- Restart app if needed

### Issue: Platform Not Available
```bash
# Check available devices
flutter devices

# Enable specific platform
flutter config --enable-web
flutter config --enable-windows-desktop
flutter config --enable-macos-desktop
flutter config --enable-linux-desktop
```

## 📱 Development Tips

### Hot Reload
- Press `r` in terminal for hot reload
- Press `R` for hot restart
- Press `q` to quit

### Debug Mode
```bash
flutter run --debug
```

### Profile Mode (Performance Testing)
```bash
flutter run --profile
```

### Release Mode
```bash
flutter run --release
```

### Open DevTools
```bash
flutter pub global activate devtools
flutter pub global run devtools
```

### VS Code Extensions
- Flutter
- Dart
- Flutter Widget Snippets

### Android Studio Plugins
- Flutter
- Dart

## 🎯 Next Steps

After running the app:

1. **Explore All Features**
   - Try all 5 themes
   - Navigate to all 6 pages
   - Test responsive design

2. **Test on Different Devices**
   - Phone
   - Tablet
   - Desktop
   - Web browser

3. **Customize Content**
   - Edit universities list
   - Update FAQ items
   - Modify services

4. **Deploy**
   - Build for your target platform
   - Test release build
   - Publish to stores

## 📞 Support

### Documentation
- See README.md for overview
- See DOCUMENTATION.md for details
- See ARCHITECTURE.md for structure

### Issues
- Report bugs on GitHub Issues
- Ask questions in Discussions
- Check existing issues first

### Contributing
- See CONTRIBUTING.md for guidelines
- Fork repository
- Create pull request

## ✅ Verification Checklist

Before deployment:
- [ ] All pages load correctly
- [ ] Navigation works smoothly
- [ ] All themes apply correctly
- [ ] Forms validate properly
- [ ] Responsive on all sizes
- [ ] No console errors
- [ ] Tests passing
- [ ] Code analyzed
- [ ] Build succeeds

## 🎉 Success!

If everything runs without errors, you now have a fully functional Flutter app running on your device!

---

**Happy Coding! 🚀**

For more information, see:
- README.md
- DOCUMENTATION.md
- QUICKSTART.md
