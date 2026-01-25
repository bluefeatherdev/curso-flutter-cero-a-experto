<!-- ---
applyTo: "**.md"
--- -->

# Project Documentation Writing Guidelines

## General Guidelines
- Write clear and concise documentation.
- Use consistent terminology and style throughout.
- Include code examples where applicable.
- Ensure reproducibility and clarity in all technical explanations.

## Grammar
- Use present tense verbs (`is`, `open`) instead of past tense (`was`, `opened`).
- Write factual statements and direct commands. Avoid hypotheticals such as *could* or *would*.
- Use active voice where the subject performs the action.
- Write in second person (`you`) to speak directly to readers.

## Markdown Guidelines
- Use headings to organize content into clear sections.
- Use bullet points for lists, with double spacing between items to improve readability.
- Include links to related resources when relevant.
- Use code blocks for code snippets.
- Write all code comments in English.
- Generate all code in English.
- In Flutter project documentation, each `.md` file must follow a strict standard to ensure clarity and reproducibility:
  - Identifiers, variables, classes, functions, and directory names must always be wrapped in backticks `` ` `` to highlight them as inline code.
  - Lists and sublists must be written with double spacing between each item, avoiding compact formatting.
  - Emojis must not be used in any part of the document.
  - The structure of the `.md` must be divided into clear and ordered subtitles:
    - **Structure**: Describe the hierarchy of widgets and directories.
    - **Key Points**: Highlight the most relevant technical aspects of the example.
    - **Example Workflow**: Explain step by step the expected behavior of the application.
- At the end of each document, always include the standard developer signature in the following exact format:

  > Made with '\\u{2665}' (♥) by Jesús Domínguez [@jdomingu19](https://github.com/jdomingu19)
