Union Shop – User Stories

This document outlines the user stories for the Union Shop coursework project.
Each story follows the As a… I want… so that… format and includes Acceptance Criteria (AC) to satisfy coursework standards.

🛍️ 1. Browse Products

User Story
As a visitor, I want to browse available products so that I can see what the shop offers.

Acceptance Criteria

 Products load from Firestore.

 Each product shows an image, title, and price.

 Clicking a product opens the Product Page.

 Responsive layout works on mobile and desktop.

🔍 2. Search for Products

User Story
As a visitor, I want to search for items so that I can quickly find what I'm looking for.

Acceptance Criteria

 Search query is passed through the URL (/search?q=).

 Results are filtered in Firestore by title/category/collection.

 “No results” message appears when appropriate.

🧾 3. View a Product

User Story
As a visitor, I want to view detailed product information so that I can decide if I want to buy it.

Acceptance Criteria

 Product page shows image, title, price, and description.

 Discount price renders correctly if provided.

 User can choose size, colour, and quantity.

 "Add to Cart" updates the CartModel.

🛒 4. Add Items to Cart

User Story
As a user, I want to add products to my cart so that I can purchase them later.

Acceptance Criteria

 CartModel stores items with quantity.

 If the same item is added again, quantity increases.

 Cart persists during session.

 Cart displays total price and total quantity.

🧺 5. View Cart

User Story
As a user, I want to view the items in my cart so that I can review my purchase.

Acceptance Criteria

 All cart items render with image, title, price, and quantity.

 Users can increase/decrease quantity.

 Users can remove items entirely.

 "Checkout" button navigates to order completion.

📦 6. Checkout & Create Order

User Story
As a logged-in user, I want to checkout so that I can complete my order.

Acceptance Criteria

 OrderModel stores items, date, total price, and order ID.

 Order service writes order to Firestore under the user’s UID.

 Cart clears after successful checkout.

 User is redirected to Order History.

📚 7. View Order History

User Story
As a logged-in user, I want to view my past orders so that I can see what I previously purchased.

Acceptance Criteria

 Orders load from Firestore (users/{uid}/orders).

 Each order shows date, ID, items, and total price.

 Empty-state message displays if no orders exist.

🔐 8. Register an Account

User Story
As a visitor, I want to register for an account so that I can make purchases and track orders.

Acceptance Criteria

 Email, password, confirm password fields.

 Errors shown for mismatched passwords or invalid email.

 On success, user is added to Firebase Auth.

 User redirected to home page.

🔑 9. Sign In

User Story
As a user, I want to sign in so that I can access cart syncing and order history.

Acceptance Criteria

 Email and password fields with validation.

 Firebase Auth verifies credentials.

 Errors shown for invalid login attempts.

 Successful login loads user cart from Firestore.

📝 10. Personalisation (Print Shack)

User Story
As a user, I want to customise a product with personal text so that I can order a unique design.

Acceptance Criteria

 User can enter personalised text.

 Price updates based on selection.

 Add-to-cart includes the personalised fields.

 Responsive layout works on all devices.

🎨 11. Explore Collections

User Story
As a visitor, I want to explore product collections so that I can find categories I’m interested in.

Acceptance Criteria

 Collections page displays category cards.

 Tapping a category shows products filtered by collection.

 Sort and filter controls work.

 Responsive grid layout.

🧭 12. Navigate the App Easily

User Story
As a user, I want clear navigation so that I can move through the site efficiently.

Acceptance Criteria

 Header shows logo, search bar, navigation links, cart icon.

 Mobile menu includes all links.

 Footer includes contact information and quick links.

 Breadcrumb-like back navigation on subpages.