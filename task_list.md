# Union Shop – Task List / Backlog

This task list links the requirements and user stories to concrete implementation work in the app.  
Tasks marked ✅ are already completed in the current repo. The rest are planned or in-progress.

---

## 1. Project Setup & Starter Code

- ✅ T1.1 – Create `union_shop` Flutter project from tutor starter repo
- ✅ T1.2 – Verify `flutter test` passes on untouched starter code
- ✅ T1.3 – Set up public GitHub repo `union_shop` and push starter code
- ✅ T1.4 – Confirm repo is public and accessible in incognito
- ✅ T1.5 – Keep branch structure simple (single `main` branch for coursework)

---

## 2. Static Pages & Basic Layout (Basic Features – A1)

- ✅ T2.1 – Implement static **Home page** layout in `main.dart`
  - Header banner text
  - Hero section with title, subtitle, and “Browse products” button
  - Placeholder products section with 4 cards
  - Footer with placeholder text

- ✅ T2.2 – Implement **Product page** in `product_page.dart`
  - Large placeholder image
  - Product name + price
  - Student instruction text describing future options
  - Footer reused

- ✅ T2.3 – Implement **About page** in `lib/pages/about_page.dart`
  - Title, description, opening hours, and contact details
  - Simple scrolling layout

- ✅ T2.4 – Implement **Collections overview page** in `lib/pages/collections_page.dart`
  - List or grid of dummy collections
  - Each collection has name + short description

- ✅ T2.5 – Implement **Single Collection page** in `lib/pages/collection_page.dart`
  - Dummy products within a collection
  - Basic sort/filter controls (non-functional at this stage or minimal)

- ✅ T2.6 – Implement **Sale page** in `lib/pages/sale_page.dart`
  - List of sale products with old vs new prices (static)

- ✅ T2.7 – Implement **Login/Register UI** (non-functional auth)
  - `LoginPage` and `RegisterPage` as simple forms
  - Wired into routes and header user icon

- ✅ T2.8 – Ensure all starter tests (`home_test.dart`, `product_test.dart`) pass

---

## 3. Navigation & Routing (Intermediate Features – A2)

- ✅ T3.1 – Add named routes in `main.dart` for:
  - `/` (Home)
  - `/about`
  - `/product`
  - `/collections`
  - `/collection`
  - `/sale`
  - `/login`
  - `/register`

- ✅ T3.2 – Wire header links and buttons:
  - About button → `/about`
  - Browse products button / cards → `/product`
  - View all products button → `/collections`
  - User icon → `/login`

- ☐ T3.3 – Add navigation from Collections page → Collection page
- ☐ T3.4 – Add navigation from Collection/Sale → Product page with selected product data (even if static at first)
- ☐ T3.5 – Double-check back navigation flows for all pages

---

## 4. Data Models & Dynamic Content (Intermediate Features – A2)

> These tasks move from hardcoded widgets to data-driven content.

- ☐ T4.1 – Create simple `Product` model in `lib/models/product.dart`
  - id, name, price, imageUrl (optional), category, collection, isOnSale, etc.

- ☐ T4.2 – Create in-memory product list in `lib/services/product_repository.dart`
  - Provide methods like `getAllProducts()`, `getProductsByCollection()`, `getSaleProducts()`

- ☐ T4.3 – Update Home page products section to use `Product` model instead of hardcoded cards

- ☐ T4.4 – Update Collections and Collection pages to use shared product data
  - Filter by collection name or tag

- ☐ T4.5 – (Optional/Advanced) Replace in-memory data with Firebase/Firestore product collection

---

## 5. Shopping Cart (Basic then Advanced – A2/A3)

- ☐ T5.1 – Create `CartItem` model in `lib/models/cart_item.dart`
  - product reference, selected options (size/colour), quantity

- ☐ T5.2 – Create `CartModel` (e.g. ChangeNotifier) in `lib/models/cart_model.dart`
  - List of CartItem
  - Methods: `addItem`, `removeItem`, `updateQuantity`, `clear`, `totalPrice`

- ☐ T5.3 – Add a **Cart page** (`lib/pages/cart_page.dart`)
  - List all cart items
  - Show total price
  - Controls to adjust quantity or remove items
  - “Place dummy order” button

- ☐ T5.4 – Wire “Add to cart” button on Product page
  - Uses CartModel to add or update items

- ☐ T5.5 – Update header cart icon to show item count (basic badge or text)

- ☐ T5.6 – (Advanced) Persist cart state locally or via backend (e.g. Firebase)

---

## 6. Authentication System (Advanced – A3)

> Currently UI only. These tasks cover real auth if there is time.

- ☐ T6.1 – Integrate Firebase into the app (`firebase_core`, `firebase_auth`)
- ☐ T6.2 – Connect Login page to Firebase sign-in
- ☐ T6.3 – Connect Register page to Firebase registration
- ☐ T6.4 – Add sign-out option (e.g. in user menu)
- ☐ T6.5 – Show logged-in user state in header (e.g. icon or name)
- ☐ T6.6 – Restrict “Order history” (if implemented) to logged-in users only

---

## 7. Search System (Advanced – A3)

- ☐ T7.1 – Add Search page (`lib/pages/search_page.dart`)
- ☐ T7.2 – Add search TextField in header or a dedicated search bar screen
- ☐ T7.3 – Filter products list by query (in-memory or via Firestore query)
- ☐ T7.4 – Display “no results” message when appropriate

---

## 8. Print Shack Personalisation

- ☐ T8.1 – Create a dedicated `PrintShackPersonalisationPage`
- ☐ T8.2 – Add text fields for personalisation text
- ☐ T8.3 – Add dropdowns for size/colour/paper type etc.
- ☐ T8.4 – Show live summary of user choices
- ☐ T8.5 – Add personalised item to cart with extra fields included

---

## 9. Testing

- ✅ T9.1 – Keep original tests (`home_test.dart`, `product_test.dart`) passing
- ☐ T9.2 – Add new widget tests for:
  - Collections page
  - Collection page
  - Sale page
  - Login/Register forms (presence of key fields/buttons)

- ☐ T9.3 – Add unit tests for:
  - Product model (e.g. fromMap/toMap if using Firestore)
  - CartModel logic (add, remove, total)

- ☐ T9.4 – Aim for “all or almost all” main pages and logic to be covered by tests

---

## 10. External Services & Deployment

- ☐ T10.1 – Choose at least 2 external services (e.g. Firebase Auth, Firestore, Hosting)
- ☐ T10.2 – Configure Firebase project and add to app
- ☐ T10.3 – Document setup in README (how to connect to Firebase)
- ☐ T10.4 – (Optional) Deploy web build to Firebase Hosting or similar and add URL to README

---

## 11. Documentation & Final Checks

- ✅ T11.1 – Write `requirements.md`
- ✅ T11.2 – Write `user_stories.md`
- ☐ T11.3 – Write `testing_plan.md` (what is tested, how, and why)
- ☐ T11.4 – Add section to README describing:
  - Features implemented
  - How to run the app
  - Tests and coverage
  - External services
- ☐ T11.5 – Check repo is public, URL works in incognito
- ☐ T11.6 – Ensure no commits are made after deadline time

---

This task list is intentionally larger than the current implementation so that it:
- Shows clear planning for intermediate + advanced features,
- Can be referenced during demo and marking,
- And can be partially completed under time pressure.
