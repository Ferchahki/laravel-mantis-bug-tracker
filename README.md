# Laravel Mantis Bug Tracker Integration

This Laravel project demonstrates the integration of the Mantis Bug Tracker Database to create a bug and improvement monitoring system. It allows you to query the Mantis Bug Tracker Database and display the monitoring data in a tabular format.

## Table of Contents

- [Laravel Mantis Bug Tracker Integration](#laravel-mantis-bug-tracker-integration)
  - [Table of Contents](#table-of-contents)
  - [Getting Started](#getting-started)
    - [Prerequisites](#prerequisites)
    - [Installation](#installation)

## Getting Started

These instructions will guide you on setting up the project on your local machine.

### Prerequisites

Before you begin, ensure you have the following installed:

- [Composer](https://getcomposer.org/)
- [Node.js](https://nodejs.org/) and [npm](https://www.npmjs.com/)

### Installation

1. Clone the repository:

   ```bash
   git clone [https://github.com/Ferchahki/laravel-mantis-bug-tracker]

Navigate to the project directory:

cd laravel-mantis-bug-tracker

2. Install PHP dependencies:

composer install

3. Install JavaScript dependencies:
   npm install

4. Create a .env file by copying .env.example and configure your database settings
   cp .env.example .env
5. Generate an application key:
    php artisan key:generate
6. Run migrations to create the necessary tables:
    php artisan migrate
7. Seed the database with sample data:
    php artisan db:seed
8. Compile the assets:
    npm run dev
9.  Docker Database config:
    DB_CONNECTION=mysql
    DB_HOST=your-mantis-database-host
    DB_PORT=your-mantis-database-port
    DB_DATABASE=your-mantis-database-name
    DB_USERNAME=your-mantis-database-username
    DB_PASSWORD=your-mantis-database-password


