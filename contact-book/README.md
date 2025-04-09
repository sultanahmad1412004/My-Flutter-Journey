# 📱 Contact Book App – Flutter Project

> _“Small steps today, bigger milestones tomorrow.”_ 🚀  
> This app is part of my ongoing journey to learn and improve in Flutter development.

---

## 🚀 Overview

The **Contact Book App** is a Flutter project built to manage and view contacts in a clean, simple interface. It allows users to add, view, and now search contacts. As a self-learning project, this app will keep growing with new features and best practices I learn along the way.

---

## 📝 Update Log

### 🔖 Version 2.0.0
- Added **Search Bar** to quickly find contacts.
- Implemented **Alphabetical Sorting** of contact list.
- Created a new **Contact Detail Screen** (`contactdetail.dart`) to view full info.
- **Refactored Backend**: Switched from using a single `Map` to a `List<Map>` structure for better scalability and cleaner logic.

### 🔖 Version 1.0.0
- **Initial Release**: Basic Contact Book functionality with two screens:
  - **Add Contacts**: Users can add a contact with name, phone number, and address.
  - **View Contacts**: Displays a list of all saved contacts with expandable details for each contact.
- **UI Elements**: Included `TabBar`, `TextField`, `ExpansionTile`, and `ListView` for navigation and displaying data.

---

## ✅ Current Features

- ➕ **Add Contact**: Users can add a contact with name, phone number, and address.
- 📄 **View Contacts**: See all saved contacts using a clean ListView with expandable tiles.
- 🔍 **Search Bar**: Quickly find contacts by typing their name.
- 🔠 **Alphabetical Sorting**: Contacts are displayed in A–Z order automatically.
- 📇 **Contact Detail Screen**: Tap a contact to view their full information on a dedicated screen.
- 🛠️ **Backend Structure Improved**: Moved from a single `Map` to a `List<Map>` approach for better data handling and scalability.

---

## 🗂️ File Structure & Flow

### 1. `main.dart`
- Contains the app's core structure, navigation, and initial tab layout (Add/View).

### 2. `show.dart`
- Displays all added contacts with search functionality and A–Z sorting.
- Uses `ExpansionTile` to show contact info inside a scrollable list.

### 3. `contactdetail.dart` *(New!)*
- A new screen that shows the full details of a selected contact.

---

## 🔧 Data Handling

- Contact data is now handled using a `List<Map>` structure.
- This makes the code cleaner, more readable, and easier to manage as the app grows.
- No database is used yet; everything runs in memory for simplicity while learning.

---

## 🔮 What's Coming Next?

- ✏️ Edit Contacts: Modify an existing contact’s info.
- 🗑️ Delete Contacts: Remove contacts from the list.
- 🔄 Update Contact Logic: Ensure real-time updates in the UI.
- 🌊 Splash Screen: Improve first-time user experience.
- 🖌️ UI/UX Enhancements: Cleaner design and animations.

---

## 📌 Conclusion

This app is more than just a project—it's a reflection of my Flutter learning process.  
With each update, I’m aiming to apply new concepts and make the app more powerful.

Thanks for checking it out, and feel free to explore the code or leave suggestions!

---

## 🔗 GitHub

Feel free to clone, fork, or contribute!  
[GitHub Repo]((https://github.com/sultanahmad1412004/My-Flutter-Journey)

---
