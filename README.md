<div align="center">
<br>

![Jokes-catalog.png](README-image/jokes-catalog.png)

</div>


<p align="center">
<img src="https://img.shields.io/badge/-RUBY-darkred">
<img src="https://img.shields.io/badge/-HTML-yellow">
<img src="https://img.shields.io/badge/-CSS-purple">
<img src="https://img.shields.io/badge/-Linux-lightgrey">
<img src="https://img.shields.io/badge/-WSL-brown">
<img src="https://img.shields.io/badge/-Ubuntu%2020.04.4%20LTS-orange">
<img src="https://img.shields.io/badge/-JetBrains-blue">
<img src="https://img.shields.io/badge/License-not%20specified-brightgreen">
</p>


<h1 align="center"> Jokes Catalog </h1>


<h3 align="center">
<a href="https://github.com/RazikaBengana/Jokes_catalog#eye-about">About</a> •
<a href="https://github.com/RazikaBengana/Jokes_catalog#memo-learning-objectives">Learning Objectives</a> •
<a href="https://github.com/RazikaBengana/Jokes_catalog#computer-requirements">Requirements</a> •
<a href="https://github.com/RazikaBengana/Jokes_catalog#package-installation">Installation</a> •
<a href="https://github.com/RazikaBengana/Jokes_catalog#keyboard-basic-usage">Basic Usage</a> •
<a href="https://github.com/RazikaBengana/Jokes_catalog#pushpin-more info">More Info</a> •
<a href="https://github.com/RazikaBengana/Jokes_catalog#bust_in_silhouette-authors">Authors</a> •
<a href="https://github.com/RazikaBengana/Jokes_catalog#octocat-license">License</a>
</h3>

---

<!-- ------------------------------------------------------------------------------------------------- -->

<br>
<br>

## :eye: About

<br>

<div align="center">

**`Jokes Catalog`** is a `Ruby on Rails` application that implements a joke catalog with `CRUD` functionality using RESTful conventions: `GET` for viewing, `POST` for creating, `PUT` for updating, and `DELETE` for removing jokes.
<br>
<br>
The app includes pages for listing all jokes, viewing individual jokes, creating new jokes, editing existing jokes, and a home page, all following the `MVC` architecture.

</div>

<br>
<br>

<!-- ------------------------------------------------------------------------------------------------- -->

## :memo: Learning Objectives

<br>

```diff

+ Implement a Ruby on Rails application following MVC architecture

+ Create RESTful routes for handling GET, POST, PUT, and DELETE requests

+ Develop CRUD functionality for managing database records

+ Build a user-friendly web interface for interacting with data

```

<br>
<br>

<!-- ------------------------------------------------------------------------------------------------- -->

## :computer: Requirements

<br>

```diff

+ Ruby 3.2.0 (via RubyInstaller on Windows or using rbenv for Linux/Mac)

+ Rails 7.0.4

+ PostgreSQL

```

<br>
<br>

<!-- ------------------------------------------------------------------------------------------------- -->

## :package: Installation

<br>

### :white_check_mark: Install `Ruby`:

<br>

<details>
  <summary><mark>&nbsp; <strong>On macOS</strong> &nbsp;</mark></summary>

<br>
<br>

- Install `Homebrew` (if not installed):

<br>

  ```bash
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  ```

<br>

- Install `rbenv`, a `Ruby` version management tool:

<br>

  ```yaml
  brew install rbenv
  ```

<br>

- Configure `rbenv` to add it to your shell:

<br>

  ```bash
  echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.zshrc
  echo 'eval "$(rbenv init -)"' >> ~/.zshrc
  source ~/.zshrc
  ```

<br>

- Install `Ruby 3.2.0`:

<br>

  ```yaml
  rbenv install 3.2.0
  ```

<br>

- Set it as the local version for this project:

<br>

  ```bash
  rbenv local 3.2.0
  ```

<br>

- Verify `Ruby` installation:

<br>

  ```yaml
  ruby -v
  ```

<br>
<br>

</details>

<br>

<details>
  <summary><mark>&nbsp; <strong>On Windows</strong> &nbsp;</mark></summary>

<br>
<br>

- Install `Ruby` via `RubyInstaller`:

  - Go to the [RubyInstaller](https://rubyinstaller.org/) website

  - Download the desired `Ruby` version (`3.2.0`) with `Devkit` (which includes tools for building native `gem` extensions)

  - During installation, check the option to **add Ruby executables to your PATH**

  - After installation, follow the prompt to set up `MSYS2`, which provides the necessary development tools

<br>

- Verify `Ruby` installation by checking the correct version:

<br>

  ```yaml
  ruby -v
  ```

<br>
<br>

</details>

<br>

<details>
  <summary><mark>&nbsp; <strong>On Linux</strong> &nbsp;</mark></summary>

<br>
<br>

- Install `rbenv`:

<br>

  ```bash
  git clone https://github.com/rbenv/rbenv.git ~/.rbenv
  ```

<br>

- Configure `rbenv` to add it to your shell:

<br>

  ```bash
  echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
  echo 'eval "$(rbenv init -)"' >> ~/.bashrc
  source ~/.bashrc
  ```

<br>

- Install `ruby-build`, the plugin that helps install `Ruby` versions:

<br>

  ```bash
  git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
  ```

<br>

- Install `Ruby 3.2.0`:

<br>

  ```yaml
  rbenv install 3.2.0
  ```

<br>

- Set `Ruby 3.2.0` as the local version for your project:

<br>

  ```bash
  rbenv local 3.2.0
  ```

<br>

- Verify `Ruby` installation:

<br>

  ```yaml
  ruby -v
  ```

</details>

<br>
<br>

### :white_check_mark: Clone the repository:

<br>

```yaml
git clone https://github.com/RazikaBengana/Jokes_catalog.git
```

<br>

- Navigate into the project directory:

<br>

```yaml
cd Jokes_catalog
```

<br>
<br>

### :white_check_mark: Install dependencies:

<br>

- Install the necessary `Ruby gems` specified in the `Gemfile` with `bundler`. <br>
  This ensures that all required libraries are available for the application to run:

<br>

```yaml
gem install bundler

bundle install
```

<br>

- Install `rails` to create and run the application framework:

<br>

```yaml
gem install rails
```

<br>
<br>

### :white_check_mark: Configure the database:

<br>

- Ensure [PostgreSQL](https://www.postgresql.org/download/) is installed and running on your system

- Open the `config/database.yml` file and configure it for `PostgreSQL`

  - Replace any `SQLite3` configurations with `PostgreSQL` settings:

<br>

```yaml
default: &default
  adapter: postgresql
  encoding: unicode
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
  username: your_postgresql_username
  password: your_postgresql_password
  host: localhost

development:
  <<: *default
  database: jokes_catalog_development

test:
  <<: *default
  database: jokes_catalog_test

production:
  <<: *default
  database: jokes_catalog_production
  username: your_production_username
  password: your_production_password
```

<br>

- Replace with your actual `PostgreSQL` credentials:

  - `your_postgresql_username`
  - `your_postgresql_password`
  - `your_production_username`
  - `your_production_password`

<br>
<br>

### :white_check_mark: Set up the database:

<br>

- Use the following commands to **create the database**, **run migrations**, and **seed the database with initial data**. <br>
  This prepares the database schema and populates it with any default data needed for the application:

<br>

```yaml
rails db:create
rails db:migrate
rails db:seed
```

<br>
<br>

### :white_check_mark: Interact with the database:

<br>

- To open the `Rails` console for database interaction:

<br>

```yaml
rails console
```

<br>

- To run a specific migration:

<br>

```yaml
rails db:migrate:up VERSION=20210101010101
```

<br>

- To rollback the last migration:

<br>

```yaml
rails db:rollback
```

<br>

- To reset the database:

<br>

```yaml
rails db:reset
```

<br>
<br>

- These steps should help you set up the application and interact with the database effectively.

<br>

- If you encounter any issues, ensure that `PostgreSQL` is correctly installed and that your `database.yml` file is properly configured.

<br>
<br>

<!-- ------------------------------------------------------------------------------------------------- -->

## :keyboard: Basic Usage

<br>

- Start the `Rails` server:

<br>

```yaml
rails server
```

<br>

- Visit [http://localhost:3000](http://localhost:3000) in your web browser

<br>

- Use the web interface to **create**, **view**, **update**, and **delete** jokes.



<br>
<br>

<!-- ------------------------------------------------------------------------------------------------- -->

## :pushpin: More Info

<br>

### Services:

<br>

- No external services are required for this application.

<br>
<br>

### Deployment instructions:

<br>

- This application can be deployed to platforms like `Heroku` or any other Rails-compatible hosting service.

<br>

- Ensure environment variables are properly set for the production environment.

<br>
<br>

<!-- ------------------------------------------------------------------------------------------------- -->

## :bust_in_silhouette: Authors

<br>

**${\color{blue}Razika \space Bengana}$**

<br>
<br>

<!-- ------------------------------------------------------------------------------------------------- -->

## :octocat: License

<br>

```Jokes Catalog``` _project has no license specified._

<br>
<br>

---

<p align="center"><br>2024</p>