# Union Shop – Requirements Checklist (My Implementation)

This checklist is inspired by a more advanced example implementation, but only includes the features that my coursework version actually implements or plans to implement.

---

## 1. Core Application Files

### `lib/main.dart`
- [x] Flutter app entry point (`main()` and `runApp`)
- [x] `MaterialApp` with a consistent theme (primary purple, light background)
- [x] Named routes configured:
  - [x] `/` → HomePage
  - [x] `/about` → AboutPage
  - [x] `/product` → ProductPage
  - [x] `/login` → LoginPage
  - [x] `/register` → RegisterPage
  - [x] `/collections` → CollectionsPage
  - [x] `/collection` → CollectionPage (dummy / placeholder)
  - [x] `/sale` → SalePage
- [x] Default route falls back to HomePage

*(No GoRouter / Firebase in my version – navigation is done with `MaterialApp` + named routes.)*

### Layout (shared header/footer inside pages)
- [x] Reusable header content (brand text “The UNION”, About link, icons)
- [x] Header used on:
  - [x] Home page
  - [x] Product page
  - [x] About page
- [x] Reusable footer with placeholder text
- [x] Footer used on:
  - [x] Home page
  - [x] Product page

---

## 2. Page Components

### Home Page (`lib/main.dart` – Home widget)
- [x] Hero section:
  - [x] Banner strip text: “PLACEHOLDER HEADER TEXT – STUDENTS TO UPDATE!”
  - [x] Main hero with title, subtitle and “Browse products” button
- [x] Products section:
  - [x] Section heading text (“Placeholder products section”)
  - [x] 4 placeholder product cards with:
    - [x] Image placeholder (icon)
    - [x] Product name
    - [x] Product price
- [x] “View all products” button at bottom of grid
- [x] Footer section with placeholder text
- [x] All elements covered by unit tests in `test/home_test.dart`

### Product Page (`lib/product_page.dart`)
- [x] Large product image placeholder at top
- [x] Product name and price displayed
- [x] Description section with student instruction text:
  - [x] “Students should add size options, colour options, quantity selector, add to cart button, and buy now button here.”
- [x] Basic layout matches starter tests
- [x] Footer with placeholder text
- [x] All elements covered by unit tests in `test/product_test.dart`

### About Page (`lib/pages/about_page.dart`)
- [x] Separate static About page (not part of home layout)
- [x] Title: “About The Union Shop”
- [x] Paragraph describing the Union Shop and its purpose
- [x] Opening hours section
- [x] Contact info section (email + address)
- [x] Back navigation (using the browser back button or app navigation)
- [x] Background colour consistent with rest of site

### Collections & Sale Pages (`lib/pages/collections_page.dart`, `collection_page.dart`, `sale_page.dart`)
*(These are simple, coursework-level “extra pages”, not the full Firebase/Gallery versions from the advanced example.)*

- [x] CollectionsPage:
  - [x] Title indicating this is a collections/overview page
  - [x] List or grid of several placeholder “collections” cards
- [x] CollectionPage:
  - [x] Title for a single collection
  - [x] Placeholder text or simple grid of products
- [x] SalePage:
  - [x] Title for Sale
  - [x] List/grid of sale items with old/new prices (static text is fine)

### Login / Register Pages (`lib/pages/login_page.dart`, `register_page.dart`)
*(UI only, authentication to be added later.)*

- [x] LoginPage:
  - [x] Email text field
  - [x] Password text field (obscured)
  - [x] “Sign in” button
  - [x] Text link: “Don’t have an account? Register”
  - [x] Helper text at bottom: demo-only / auth to be implemented later
- [x] RegisterPage:
  - [x] Email field
  - [x] Password field
  - [x] Confirm password field
  - [x] “Create account” button
  - [x] Text link to go back to Sign In
  - [x] Same demo-only note
- [x] Both forms centred with friendly card-style layout and padding

---

## 3. Tests

### Provided tests (must pass)
- [x] `test/home_test.dart`
  - [x] Home page basic elements rendered
  - [x] Product cards appear
  - [x] Header icons present
  - [x] Footer text present
- [x] `test/product_test.dart`
  - [x] Product page basic elements rendered
  - [x] Student instruction text present
  - [x] Footer text present

### Additional testing notes
- [x] All tests pass with `flutter test`
- [x] No network requests required in tests (images use placeholders)

---

## 4. Non-Functional Requirements

- [x] App runs in Chrome via `flutter run -d chrome`
- [x] Basic responsiveness (layouts look acceptable on desktop and narrow window)
- [x] Code compiles with no analysis errors
- [x] `pubspec.yaml` contains only the required dependencies from the starter project
- [x] Project builds without extra configuration

---

## 5. Future Enhancements (Not Implemented Yet)

These are *ideas only*, inspired by the advanced example. They are **not required** for this coursework submission:

- [ ] Switch to GoRouter for routing
- [ ] Add Firebase Authentication for real login/register
- [ ] Store products in Firestore
- [ ] Implement real cart and order history with Provider + Firestore
- [ ] Add search page with live search results
- [ ] Add Print Shack personalisation flow with live price updates
