# Debugging & Tests

Use Claude to take a more methodical approach. Don't just copy/paste error messages or screenshots and hope Claude will solve it.

Put in a prompt that _not only mentions where the error is_ but also specifies _where we need to write tests_

Identify files that could be the source of your error and ask Claude Code to write tests to programmatically verify functionality and then deduce what the appropriate fix would be.

An example prompt:

```
<describe error succinctly>

I need you to:
1. Write tests to evaluate the outputs of the execute method of the CourseSearchTool in @backend/search_tools.py
2. Write tests to evaluate if @backend/search_tools.py correctly calls for the CourseSearchTool
3. Write tests to evaluate how the RAG system is handling the content-query related questions.

Save tests in a tests folder withing @backend. Run those tests against the current system to identify which components are failing. Propose fixes based on what the tests reveal is broken.

Think hard.
```

Some additional enhancements:
* You can use a dot `.` after referencing a folder with `@` to just reference the entire folder.
* Phrases like "Think hard" or "Think a lot" will trigger Claude's ability to enable extended thinking and allocate more tokens to the thinking process. Remember that execution can be stopped with `ESC` and use Plan Mode for complex files.

## Additional questions
Unit tests/integration tests: what are these? What is the `pytest` framework and what are other ones?

# Refactor

Additional enhancement:
* You can also create markdown files in your directory that you can write long/complex Claude Code queries in and execute them with the file reference tool `@`.
* In big/complex refactors with long prompts in Plan Mode you can add instructions like this:
  * `Use two parallel subagents to brainstorm possible plans. Do not implement any code.`
