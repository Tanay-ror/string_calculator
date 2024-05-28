# String Calculator

## Introduction

Welcome to the String Calculator! This project is a part of the Incubyte TDD assessment. The goal is to implement a simple string calculator using Test-Driven Development (TDD) practices. The calculator takes a string of numbers and returns their sum, supporting various delimiters and handling edge cases like negative numbers.

## Project Structure

string_calculator/
├── lib/
│ └── string_calculator.rb
├── spec/calculator/
│ └── string_calculator_spec.rb
├── Gemfile
├── Gemfile.lock
└── README.md

## Features

1. Supports addition of comma-separated numbers.
2. Supports custom delimiters.
3. Handles negative numbers.
4. Returns "Invalid Input" for specific cases.

## Getting Started
To use the string calculator, follow these steps:

1. Clone this repository to your local machine.
2. Navigate to the project directory.
3. Ensure you have Ruby installed on your system.

Install the required dependencies by running:
`bundle install`


Run the RSpec tests to ensure everything is working correctly:
`rspec`

Start using the string calculator in your own Ruby projects by requiring the string_calculator.rb file.
