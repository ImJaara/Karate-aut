# Karate-aut

Automated API testing framework built with Karate DSL, Java and Gradle.

---

## Overview

This project was created to automate REST API testing using Karate DSL.

The framework includes reusable test scenarios, request validation, response assertions, HTTP logging, sensitive data masking and Gradle-based execution.

---

## Technologies

- Java
- Karate DSL
- Gradle
- JUnit 5
- REST API
- JSON

---

## Development Environment

The project was developed and tested using the following environment:

| Tool | Version |
|---|---|
| IDE | IntelliJ IDEA Community Edition 2025.3 |
| Java SDK (JDK) | 11 |
| Gradle | 8.2 |
| Karate DSL | 1.3.1 |
| JUnit | 5 |
| Version Control | Git for Windows |
| Terminal | Git Bash (UCRT64) |
 
---

## Features

- Automated API testing
- Request and response validation
- Reusable scenarios
- JSON assertions
- HTTP request and response logging
- Sensitive data masking
- Gradle test execution
- HTML test reporting

---

## Project Structure

```text
src
└── test
     ├── java
     │    └── features
     └── resources
```

---

## Running the Tests

Run all tests:

```bash
./gradlew test
```

Run a specific test:

```bash
./gradlew test --tests "ClassName"
```

Run tests using a specific environment:

```bash
./gradlew test -Dkarate.env=qa
```

---

## Reports

After execution, reports can be found in:

```text
build/karate-reports/karate-summary.html
```

---

## Example Scenario

```gherkin
Feature: API Test Example

Scenario: Get user information
    Given url 'https://reqres.in/api/users/2'
    When method GET
    Then status 200
```

---

## Author

Matias Solis

GitHub: [ImJaara](https://github.com/ImJaara)
