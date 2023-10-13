# iij_test

A new Flutter project.

## Getting Started

This project is build in **Model-View-ViewModel (MVVM)** architectural pattern. MVVM is a popular architectural pattern for building UI, especially in mobile app development. It separates the UI/views of an app into three distinct components: the Model, the View, and the ViewModel. Each element plays a specific role.

The **Model** represents the data and business logic of the app. It is responsible for storing, retrieving, and manipulating the data that the app needs to function. The Model should be completely independent of the View and ViewModel, and should only contain logic related to the data itself. The **View** represents the UI of the app. It is responsible for displaying the data to the user and capturing user input. The View should be completely independent of the Model and ViewModel and should only contain logic related to the presentation of the data. The **ViewModel** acts as a bridge between the Model and the View. It provides a clean and convenient way for the View to access and manipulate the Model. The ViewModel should be completely independent of the View and should only contain logic related to the transformation of the Model data for the View. By implementing MVVM architecture in Flutter projects, developers can create a clear separation of concerns in their code, making it easier to understand,  maintain, test, and scale.

There is Common, Core and Module folder in folder structure. The **Common** folder is for common widget, model, class, controller and other that will be use in many parts in app. The **Core** folder is for core of the app. In this folder may contains network of the app, push notification, deeplink, and other core feature of the app. **Module** folder is where the views, widget, and model that seperatecfor each one views or screens.

I make some reusable widget like RecipeCard and LoadingBar to easier to scale and the code become more efficient and effective.

# Testing Strategy
In terms of testing strategy, it's important to test each component of your app independently. Unit tests can be used to test individual functions or methods within each component. Integration tests can be used to test how different components interact with each other. Widget tests can be used to test how widgets are rendered on screen.

It's also important to emphasize testing in clean architecture. Different types of tests such as unit tests, integration tests, and widget tests should be written for each layer (data layer, domain layer, presentation layer).

**Unit Testing**: Write unit tests for the data layer, domain layer, and presentation layer. The Model should be tested with unit tests as it represents the data and business logic of the app. The ViewModel should also be tested with unit tests as it acts as a bridge between the Model and the View. The View should be tested with widget tests to ensure that it is rendering correctly.

**Integration Testing**: Write integration tests to test the interaction between different components of the app. Integration tests should be written for the ViewModel and View to ensure that they are working together correctly.

**Widget Testing**: Write widget tests to test the UI components of the app. Widget tests should be written for reusable widgets to ensure that they are working correctly.

**Test-Driven Development (TDD)**: Use TDD to write tests before writing code. This helps in identifying issues early in the development process and ensures that code is testable.

**Continuous Integration (CI)**: Use CI to automate the testing process. This helps in identifying issues early in the development process and ensures that code is always in a releasable state.

