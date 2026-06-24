```markdown
# NGshiyu.github.io Development Patterns

> Auto-generated skill from repository analysis

## Overview
This skill documents the development patterns and conventions used in the `NGshiyu.github.io` repository, which is a TypeScript-based project with no detected framework. It covers file organization, code style, testing approaches, and provides recommended commands for common workflows. By following these guidelines, contributors can ensure consistency and maintainability across the codebase.

## Coding Conventions

### File Naming
- Use **kebab-case** for all file names.
  - Example:  
    ```
    user-profile.ts
    utils/helpers.ts
    ```

### Import Style
- Use **relative imports** for modules within the repository.
  - Example:
    ```typescript
    import { fetchData } from './utils/fetch-data';
    ```

### Export Style
- Prefer **named exports** over default exports.
  - Example:
    ```typescript
    // In utils/math.ts
    export function add(a: number, b: number): number {
      return a + b;
    }

    // Usage
    import { add } from './utils/math';
    ```

### Commit Messages
- Commit messages are **freeform** and do not follow a strict prefix or format.
- Average commit message length is about 61 characters.

## Workflows

### Adding a New Module
**Trigger:** When you need to add a new feature or utility.
**Command:** `/add-module`

1. Create a new file using kebab-case naming (e.g., `new-feature.ts`).
2. Write your TypeScript code, using named exports.
3. Import your module using a relative path where needed.
4. If applicable, create a corresponding test file named `new-feature.test.ts`.
5. Commit your changes with a clear, descriptive message.

### Writing and Running Tests
**Trigger:** When you need to add or update tests for your code.
**Command:** `/run-tests`

1. Create or update test files using the `*.test.*` pattern (e.g., `utils.test.ts`).
2. Write your test cases in TypeScript.
3. Use the project's preferred test runner (framework is unknown; check project documentation or scripts).
4. Run the tests to ensure all pass before committing.

### Refactoring Code
**Trigger:** When improving or restructuring existing code.
**Command:** `/refactor`

1. Update the relevant files, maintaining kebab-case naming and relative imports.
2. Refactor to use named exports if not already in place.
3. Update any affected imports throughout the codebase.
4. Update or add tests as needed.
5. Commit with a message describing the refactor.

## Testing Patterns

- Test files use the `*.test.*` naming convention (e.g., `math.test.ts`).
- The specific testing framework is not detected; check for documentation or scripts in the repository for details.
- Tests are written in TypeScript and should cover the main functionalities of each module.

**Example:**
```typescript
// math.test.ts
import { add } from './math';

describe('add', () => {
  it('adds two numbers', () => {
    expect(add(2, 3)).toBe(5);
  });
});
```

## Commands
| Command         | Purpose                                      |
|-----------------|----------------------------------------------|
| /add-module     | Scaffold and add a new module                |
| /run-tests      | Run all test files in the repository         |
| /refactor       | Refactor code while following conventions    |
```
