# Karate-aut

Automated API testing framework built with Karate DSL, Java and Gradle.

---

## Overview

This project was created to automate REST API testing using Karate DSL.

The framework includes reusable test scenarios, request validation, response assertions and Gradle-based execution.

---

## Technologies

* Karate DSL
* Java
* Gradle
* JUnit

---

## Features

* Automated API testing
* Request and response validation
* Reusable scenarios
* JSON assertions
* Gradle test execution
* Test reporting

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

## Reports

After execution, reports can be found in:

```text
build/reports/tests/test/index.html
```

---

## Author

Matias Solis

GitHub: [https://github.com/ImJaara](https://github.com/ImJaara)
