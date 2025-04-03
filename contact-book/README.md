# Contact Book App - Flutter Project

> **Note**: This project is still a work in progress. It is not fully complete, and I will continue to make updates to improve and add more features in the future. Whenever an update is made, I will mention the changes along with the date so that you can easily track the progress and understand how this app evolves step by step as I’m in the learning phase of Flutter.

## Overview

The Contact Book app is a dynamic Flutter project designed to help manage and view contacts. The app allows users to add, store, and display contact details like names, phone numbers, and addresses. The app’s structure and features may evolve over time, with new screens, functionalities, and improvements added regularly as part of my learning journey.

### Current Features:
- **Add New Contact**: Users can add a contact with their name, phone number, and address.
- **View Contacts**: Displays a list of all saved contacts with expandable details for each contact.
- **UI Elements**: The app includes intuitive UI elements such as a `TabBar`, `ExpansionTile`, `TextField`, and `ListView`.

---

### File Structure and Flow

1. **Main App Logic**:
   - The main logic for adding contacts and managing the app’s navigation resides in `main.dart`. This file contains the basic structure of the app and manages the two main functionalities—adding contacts and viewing saved contacts.

2. **Displaying Contacts**:
   - `show.dart` is responsible for displaying the saved contacts in an interactive, expandable list. Users can view detailed information for each contact by tapping on their name, which reveals their phone number and address.

The structure and features of the app are dynamic, so as I learn more about Flutter, I plan to continue updating the app with new functionality and screens.

---

### How the Files Work Together

- **Dynamic Data Handling**: 
  - The app dynamically stores contact data in a `Map`, which is shared across different parts of the app. As new contacts are added, the data is updated and reflected in the contact list.
  
- **Navigation Between Screens**:
  - The app features a simple tabbed interface (`TabBar`) to switch between adding a new contact and viewing the list of existing contacts.

- **UI Interactions**:
  - Users can easily interact with the app using text fields to input new contact information and expand each contact’s tile to view more details.

---

## What's Next? Possible Future Updates

- **Add a Search Bar**: To quickly search for contacts.
- **Edit and Delete Options**: Allow users to edit or delete a contact from the list.
- **Contact Info Screen**: A detailed screen for each contact, showing more than just the name and phone number.
- **Sort Contacts**: Show contacts in ascending order based on their names or other criteria.

These are just a few ideas for future updates. As I progress in my Flutter journey, I will keep adding more features to enhance the app.

---

## Conclusion

This project is a stepping stone in my journey to learn Flutter. The app’s functionality will continue to evolve as I learn new concepts and features. Keep an eye on future updates to track the development step-by-step. Thank you for being a part of this learning process!

---

