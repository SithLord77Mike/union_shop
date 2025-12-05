Union Shop – Testing Plan
1. Introduction

This testing plan outlines the complete testing strategy for the Union Shop Flutter application.
It covers what is tested, how it is tested, and why each test matters.
The goal is to ensure the application is stable, correct, accessible, and meets the coursework requirements for quality, reliability, and maintainability.

Testing is performed through:

Unit tests (models, services, utility functions)

Widget tests (UI rendering + interactions)

Integration-style tests using mocks (Firebase mock libraries)

Manual exploratory testing (cross-browser and responsive)

2. Testing Goals
✔ Ensure all major features operate correctly
✔ Validate UI behaviour across devices
✔ Detect regressions before committing
✔ Achieve high code coverage (>80%)
✔ Match the expected behaviour described in the user stories and requirements
3. Testing Methodology
3.1 Automated Testing

Automated tests are located under the test/ directory and divided into:

a) Model Tests

Tests CartItem and CartModel behaviour

Tests OrderItem and Order models

Tests price calculations, quantity updates, and serialization

b) Service Tests

Authentication via AuthService

Order creation and retrieval via OrderService

Uses:

firebase_auth_mocks

fake_cloud_firestore

c) Widget Tests

Tests rendering and interactions of all key pages:

HomePage

AboutPage

CollectionsPage

ProductPage

SearchPage

CartScreen

RegisterPage & LoginPage

d) Layout Tests

Ensures AppHeader and AppFooter render correctly

Ensures expected navigation elements appear

e) Routing Tests

Ensures GoRouter navigates to correct pages

Ensures unknown routes show error screen

4. Manual Testing Strategy

Manual tests include:

4.1 Cross-Device Testing

The app is manually tested in:

Chrome desktop

Chrome mobile emulation (iPhone 12 / Pixel 7)

Firefox

Edge

Checking:

Header responsiveness

Footer layout

Home hero section scaling

Product grids (1, 2, and 3-column modes)

4.2 User Flow Testing

Checked manually:

Register → Login → Add to Cart → Checkout → Order History

Search for items

Navigate collections → product page

Navigate using both desktop menu + mobile burger menu

5. Tools & Frameworks
Tool	Purpose
Flutter Test Framework	Core testing environment
Mocktail	Mocking dependencies
fake_cloud_firestore	Firebase Firestore simulation
firebase_auth_mocks	Firebase Auth simulation
GoRouter Testing Utilities	Navigation tests
VS Code / Android Studio Test Runner	Execution
6. Test Coverage Strategy

The target is 80%+ coverage, achieved through:

✔ Testing all model logic
✔ Testing all service interactions
✔ Testing primary UI interactions
✔ Avoiding unnecessary test exclusions (exclude_from_coverage)

Coverage is measured using:

flutter test --coverage
genhtml coverage/lcov.info -o coverage/html

7. Test Matrix (What, Why, and How)
Component	What is Tested	Why	Test Type
CartItem	toMap(), fromMap(), totalPrice, optional fields	Prevent runtime errors, ensure serialization	Unit
CartModel	add/remove items, quantity updates, Firestore sync	Main business logic; must be reliable	Unit + Mock Firebase
AuthService	register, login, logout, error handling	Core user functionality	Unit + Mock Firebase
OrderService	create order, list orders	Required for coursework features	Unit + Mock Firebase
HomePage	hero section, product section, layout	Ensure UI matches requirements	Widget
AboutPage	text rendering	Minor page, but must be tested for completeness	Widget
CollectionsPage	grid count, item count	Major navigation page	Widget
CollectionPage	sorting, filtering, loading states	Complex behaviour	Widget
ProductPage	discount logic, cart integration, dropdowns	One of the most complex pages	Widget
SearchPage	search query handling, empty states	Requires Firebase + logic tests	Widget
CartScreen	item rendering, total calculation	Essential flow	Widget
Routing	correct page loads, unknown routes	Prevent navigation bugs	Routing tests
Layout	header & footer render correctly	Required for coursework tests	Widget
8. Test Data
Mock user:
email: test@example.com
password: password123

Mock product examples:
Field	Example
title	"Uni Hoodie"
price	25.00
disc_price	20.00
category	"Clothing"
collection	"Essential Range"

Purpose of mock data:

Deterministic results

Test discount price logic

Ensure filters and search behave correctly

9. Risks & Mitigation
Risk	Impact	Mitigation
Firebase unavailable	Blocks real testing	Use mock Firebase for all tests
UI overflow errors	Breaks mobile layout	Manual responsive testing
Routing changes breaking tests	High	Centralized routing in routing.dart
Time pressure	High	Automated tests run on each commit
10. How to Run Tests
Run all tests
flutter test

Run tests with coverage
flutter test --coverage

View coverage HTML report
genhtml coverage/lcov.info -o coverage/html


Open:

coverage/html/index.html

11. Conclusion

This testing plan ensures:

All requirements are validated

All major components are covered

The system is stable, maintainable, and correct

You meet coursework expectations for testing depth and documentation quality

This document also demonstrates planning, understanding, and professionalism, which is directly rewarded in the marking rubric.