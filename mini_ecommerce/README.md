# Minimal E-commerce App with Cart Functionality in Flutter

## Overview

This Flutter app is a minimal e-commerce application that allows users to browse products, add them to their shopping cart, and view the cart. It demonstrates basic e-commerce functionality including product listings, cart management, and state management using the Provider package.
<img src="https://github.com/user-attachments/assets/Screenshot_1731849533.png" alt="Minimal E-commerce App" width="300"/>

## The app includes:

- A list of products displayed in a simple layout.
- Cart functionality to add, remove, and display products in the shopping cart.
- State management to keep track of the cart's contents using Provider.

### Features

Display a list of products with basic details (name, price, description).
Add products to the cart.
Remove products from the cart.
View the cart with a total price.
Prerequisites
Before you can run this app, ensure you have the following installed:

Flutter: Make sure Flutter is installed on your machine. Follow the installation guide here.
Dart: Dart is included with Flutter, so no separate installation is required.
You can check your installation by running:

```bash
Copy code
flutter doctor
Installation
1. Clone the Repository
Clone the repository to your local machine:
```

```bash
Copy code
git clone https://github.com/BrianKvin/mini_ecommerce.git
```

2. Install Dependencies
   Navigate to the project directory and install the dependencies:

```bash
Copy code
cd minimal-ecommerce-flutter
flutter pub get
```

3. Run the App
   Now, run the app on your emulator or physical device:

```bash
Copy code
flutter run
Folder Structure
bash
Copy code
minimal-ecommerce-flutter/
├── lib/
│   ├── components/        # Widgets for UI components
│   │   ├── my_drawer.dart # Drawer menu widget
│   │   └── my_product_tile.dart # Product tile widget
│   ├── models/            # Data models
│   │   ├── cart.dart      # Cart model for managing cart items
│   │   └── product.dart   # Product model representing products in the store
│   ├── pages/             # Application pages
│   │   ├── shop_page.dart # Shop page that displays products
│   │   └── cart_page.dart # Cart page displaying cart items
│   └── main.dart          # Entry point of the app
└── pubspec.yaml           # Project dependencies
```

## How It Works

### Shop Page:

Displays a list of products (Product objects).
Each product has an "Add to Cart" button, which adds the product to the cart using the Cart provider.
Cart Page:

Displays the products that have been added to the cart.
You can remove items from the cart and see the total price at the bottom.
Cart Management:

The Cart model uses ChangeNotifier to notify the UI when changes occur (adding/removing products).
The CartPage listens to the Cart provider to update the UI when items are added or removed.
