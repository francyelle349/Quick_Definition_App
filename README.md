# Quick_Definition_App
<img src="QuickDefinitionImages/quickdefinitionInitialScreen.png" alt="Quick Definition Screenshot" width="200"/>

Flutter app designed to provide instant definitions for any term you need. Using Gemini API (Google's AI), QuickDefinition allows users to type in a word or phrase and receive a concise and clear definition in real-time.

<img src="QuickDefinitionImages/QuickCoffee.png" alt="Quick Definition Screenshot" width="200"/>

# Features

Instant Definitions: Quickly find clear and concise definitions at your fingertips.

User-Friendly Interface: Sleek design with an easy-to-navigate layout enhances the user experience.

Educational Tool: Perfect for students needing quick explanations or anyone curious about new terms.

Supports Active Learning: Encourages exploration and learning through discovery.



# How It Works
<img src="QuickDefinitionImages/QuickDefinitionScreen2.png" alt="Quick Definition Screenshot" width="200"/>

Search Input: Users are greeted with a minimalist search interface where they can type any term.

Retrieval: Upon initiating a search, the application processes the query using a comprehensive dictionary database to retrieve a concise definition.

Display: Definitions are immediately displayed in a readable format, allowing for quick comprehension and learning.


# Usage Scenario

Imagine a student in a library working on a research paper, encountering unfamiliar terms. Instead of searching a lot of sites in the internet or a lot of different definitions, they use Quick Definition to instantly obtain clear explanations. 


# Clean Architecture 

<img src="https://www.c-sharpcorner.com/article/what-is-clean-architecture/Images/What%20is%20Clean%20Architecture2.png" alt="Quick Definition Screenshot" width="600"/>

Clean architecture is a strategic framework used to develop software in a way that enhances its maintainability, scalability, and independence from UI, database, or any external agency. In the context of Quick Definition, implementing clean architecture means organizing the code into separate layers, each with a distinct responsibility. This separation ensures that the app is not only easier to manage but also more adaptable to changes in technology or business requirements.

Domain Layer: This is the core of the app, where the business logic resides. It defines entities, use cases, and interfaces that represent the various functionalities of the application.

Data Layer: Contains data access and data source implementations. The app's interactions with the Gemini API and other data management operations are defined here, ensuring that the domain layer remains independent of data source changes.

Presentation Layer: Focuses on the UI, using Flutter and Dart. It interacts with the domain layer to handle user input and display data. This layer is kept separate from business logic, which means UI changes do not affect the core functionalities.



# You will need the Gemini API KEY 

1- For your code work properly you will need to generate your own key

You can  make it with this Link: https://ai.google.dev/gemini-api?hl=pt-br

2 - Modify this class and insert your key:

<img src="QuickDefinitionImages/Untitled design (2).png" alt="Quick Definition Screenshot" width="500"/>





