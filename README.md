# README

## Food Nutrient Finder

### Introduction
Food Nutrient Finder is a Ruby on Rails application currently under development, allowing users to search for foods and view their nutritional information. This project is a part of my learning and advancement in web development. The application provides a platform for users to save their favorite foods, add new foods, and edit or delete existing foods.

### Features
* **Food Search**: Allows users to search for any food and get detailed information about its nutrients.
* **User Authentication**: Users can sign up and log in to access more features.
* **Favorite Foods**: Users can save their favorite foods for easy access in the future.
* **Food Management**: Users can add new foods to the database, or edit and delete existing foods.

### Prerequisites
Before you begin, ensure you have met the following requirements:

* You have installed Ruby version 3.2.2
* You have installed Rails version 7.0.5
* You have MySQL installed on your machine

### Installing Food Nutrient Finder
To install Food Nutrient Finder, follow these steps:

1. Clone the repository
2. Navigate to the project directory
3. Run `bundle install` to install the required gems

### Using Food Nutrient Finder
To use Food Nutrient Finder, follow these steps:

1. Ensure that you have MySQL installed on your system. If you don't have it installed, you can refer to the MySQL documentation or your operating system's package manager for instructions on how to install it.

2. Once MySQL is installed, it's essential to set up the login credentials (username and password) for accessing the MySQL server. If you haven't done so already, please configure the login credentials according to the guidelines provided in the MySQL documentation.

3. After configuring the login credentials, locate the database.yml.example file in the project directory and open it using a text editor. Inside this file, you will find a section that pertains to the database settings.

You may have something like this:

    ```
    username: your_username
    password: your_password
    ```

Replace `your_username` and `your_password`  with your own MySQL username and password.

**Note: Before proceeding, make sure to rename the `database.yml.example` file to `database.yml`. This step ensures that the Rails application recognizes the configuration file correctly.**

4. After correctly configuring the `database.yml` file, you can proceed with the following commands to create and migrate the database:
    - In the terminal, navigate to the root directory of your Rails project.
    - Run the following command to create the database:
        ```
        rails db:create
        ```
    - Then, run the following command to migrate the database:
        ```
        rails db:migrate
        ```

5. These commands will create the database and apply any necessary migrations for your project.

6. Once the migration is complete, you can run the following command in your terminal or command prompt:
    ```
    rake db:import_data
    ```

7. This command will import data from the `food.CSV` file, located in the `/references` directory, into the corresponding tables in your database. The script uses the SmarterCSV gem to process the CSV file.

8. Wait for the import process to finish. Once the import is complete, you will see a message indicating that the data has been imported successfully.

9. Start the Rails server by running `rails server`

10. Visit `http://localhost:3000` in your web browser to use the application

### Contact
If you have any questions or comments about this project, feel free to contact me at thairone3@gmail.com
