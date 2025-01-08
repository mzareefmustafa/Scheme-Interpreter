# Scheme interpreter

A robust Python-based system that interprets a specific subset of the Scheme language.

## Key Features

- **Parsing: User input is parsed into the interpreter's internal Python representation of Scheme expressions.
- **Evaluation: Scheme expressions are evaluated to obtain values, following rules for call expressions and special forms.
- **Application: Built-in procedures are applied using the apply method, while user-defined procedures create a new call frame and recursively evaluate their body.
- **Printing: The obtained value is printed as a string representation.
- **Looping: The interpreter operates within a Read-Eval-Print Loop (REPL), handling user interactions.

## How to Run the Program

### Option 1: Run Locally
1. Download the project files.
2. Navigate to the main directory folder in your terminal.
3. Run the program using: python3 scheme.py

## Best files to view my work
1. scheme_reader.py, scheme.py, questions.scm, and tests.scm
