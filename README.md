# Union Shop — Flutter Coursework (Michalis Koullourenos)

This repository is my implementation of the **Union Shop** coursework for:

- Programming Applications and Programming Languages (**M30235**)
- User Experience Design and Implementation (**M32605**)

The brief was to recreate the UPSU Union Shop website in **Flutter**, focusing on
functionality, responsive layout, testing, and good software-engineering practice.

---

## 1. Overview

The app is a small e-commerce site where users can:

- Browse products and collections
- View product details (including sale / discount prices)
- Search across the catalogue
- Personalise products (Print Shack)
- Add items to a cart and “checkout”
- Register, sign in, and see their order history

The project uses:

- **Flutter (web target)**
- **GoRouter** for navigation
- **Provider** for state management
- **Firebase Authentication** for login / registration
- **Cloud Firestore** for products, cart and orders

---

## 2. Main Features Implemented

### Storefront & Navigation

- Multi-page layout with **GoRouter**
- Routes for: home, about, collections, collection page, product page, search,
  sale page, personalisation, Print Shack about, login, register, cart, order history
- Header with logo, navigation links, search bar and cart icon
- Mobile hamburger menu with expandable sections (Shop, Print Shack, Account)
- Footer with links, contact details and social icons

### Homepage

- Hero section with call-to-action button
- Featured products from Firestore
- “Our range” tiles linking to collections
- “Personal touch / Print Shack” section with CTA to the personalisation page
- Fully scrollable layout using `SingleChildScrollView`
- Uses shared **AppHeader** and **AppFooter**

### Collections & Products

- **Collections page**  
  - Grid of collections, responsive column count (1–3 depending on width)
  - Navigation into individual collection pages

- **Collection page (dynamic)**  
  - Uses a `slug` parameter in the route (`/collections/:slug`)
  - Loads products for that collection from Firestore
  - Sorting: featured, A–Z, Z–A, price low→high, price high→low
  - Filtering by category
  - Responsive grid of `ProductCard`s

- **Product page**  
  - Receives product details via query parameters
  - Large product image, title, price and optional discount price
  - Size selector, colour selector, quantity selector
  - “Add to cart” button wired into the cart provider
  - “You may also like” section with related products from the same collection

### Search

- Search field in the header
- Navigates to `/search?q=…`
- Firestore query matching the search term across title/category/collection
- Same sort and filter options as the collection page
- “No results” message and proper loading/error states

### Print Shack

- **Personalisation page**
  - Choose base product and personalisation options
  - Text input for custom text
  - Quantity selector with real-time price update
  - “Add to cart” integrates with cart provider
  - Layout switches between column (mobile) and row (desktop)

- **Print Shack About page**
  - Static explanatory content describing the service
  - Links back into personalisation flow

### Authentication

- **Register page**
  - Email, password, confirm password fields
  - Basic validation and password match check
  - Uses **Firebase Authentication** to create accounts
  - Shows error messages on failure

- **Login page**
  - Email + password login with Firebase Auth
  - Loading state while logging in
  - Error handling for invalid credentials
  - “Don’t have an account? Register” link

- **Auth integration**
  - Auth state listener used by the cart model
  - Cart is loaded when a user signs in and cleared when they sign out

### Cart & Orders

- **Cart model (`CartModel`)**
  - Backed by a map of `CartItem`s
  - Getters for item list, item count, total quantity and total price
  - `addProduct`, `removeProduct`, `removeProductCompletely` and `clearCart`
  - Automatic synchronisation with Firestore under `users/{uid}/cart`

- **Cart screen**
  - Lists all items with image, title, price and quantity controls
  - Increase/decrease quantity, remove item
  - Shows subtotal and total quantity
  - “Checkout” button which creates an order and clears the cart
  - Empty cart message + “Continue shopping” button

- **Order model and service**
  - `Order` and `OrderItem` models map to Firestore documents
  - `OrderService` handles:
    - Creating a new order from the cart
    - Saving to `users/{uid}/orders/{orderId}`
    - Fetching orders for the current user (most recent first)

- **Order history page**
  - Displays list of previous orders for the logged-in user
  - Each card shows date, order id, summary of items, total and status
  - Handles loading, empty and error states

---

## 3. Project Structure

```text
lib/
 ├── main.dart                # Entry point, providers and router setup
 ├── routing.dart             # GoRouter configuration
 ├── layout.dart              # AppHeader, AppFooter and shared layout
 ├── images_layout.dart       # HoverImage, ProductCard, SquareImage
 ├── app_styles.dart          # Centralised text styles and colours
 ├── firebase_options.dart    # Generated Firebase config
 ├── models/
 │    ├── cart_model.dart
 │    └── order_model.dart
 ├── services/
 │    ├── auth_service.dart
 │    └── order_service.dart
 └── pages/
      ├── about_page.dart
      ├── collections_page.dart
      ├── collection_page.dart
      ├── product_page.dart
      ├── sale_page.dart
      ├── login_page.dart
      ├── register_page.dart
      ├── cart_page.dart / cart_screen.dart
      ├── order_history_page.dart
      └── print_shack/...
4. External Services Used

This coursework uses two main external cloud services, as required by the brief:

Firebase Authentication

Email/password sign up and login

Used in the login, register and any auth-protected areas (e.g. order history)

Auth state is listened to in CartModel and OrderService

Cloud Firestore

products collection for product data

users/{uid}/cart subcollection for each user’s cart items

users/{uid}/orders subcollection for order history

(If hosted on Firebase Hosting, that can be mentioned to demonstrate deployment as a third service.)

5. Running the Application
Prerequisites

Flutter SDK installed and on the PATH

Chrome browser

Firebase project configured (see firebase_options.dart)

Commands

Install dependencies:

flutter pub get


Run the app on Chrome:

flutter run -d chrome


The app is designed primarily for web-mobile view (use Chrome DevTools → device toolbar).

6. Testing

The project includes several test files covering both UI and logic:

test/home_test.dart – homepage widget tests

test/product_test.dart – product page widget tests

test/layout_test.dart – header/footer and navigation elements

test/cart_model_test.dart – CartItem and CartModel behaviour

test/auth_service_test.dart – authentication flows (mocked)

test/order_service_test.dart – order creation and retrieval (mocked)

test/search_page_test.dart – search results, empty states and errors

Run all tests with:

flutter test


At the time of submission:

✅ All tests pass

✅ Code coverage is focused on key models, services and widgets

7. Responsive Design

Breakpoints used:

< 600px: mobile layout

600–900px: tablet layout

> 900px: desktop layout

Examples of responsive behaviour:

Homepage hero area changes size and typography

Product and collection grids adjust number of columns

Header switches between full navigation and hamburger menu

Sort and filter controls stack vertically on small screens

Personalisation page switches between column and row layout

8. Development Practices

This project follows the practices taught in the worksheets:

Regular, small and descriptive Git commits

Clear separation of concerns (models, services, views, widgets)

Use of Provider for app-wide state instead of passing data manually

Defensive coding with null/empty checks and error handling

Commented sections where logic is non-obvious

Additional docs:

requirements.md

user_stories.md

task_list.md

testing_plan.md

9. Author

Name: Michalis Koullourenos
Course: BSc (Hons) Computer Science – University of Portsmouth
Modules: M30235 & M32605

This repository is my final submitted version for the Union Shop Flutter coursework.