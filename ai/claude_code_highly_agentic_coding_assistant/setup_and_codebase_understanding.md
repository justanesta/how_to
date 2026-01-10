# High Level Claude Questions

High level question to familiarize with a repository: **"give me an overview of the codebase"**

Claude Code can explain concepts to you. For example, in a RAG chatbot feature one could ask: "how are these documents processed" and the model would search your codebase for files and breakdown the details of how documents are processed in a RAG system.

Another example query to use when trying to familiarize yourself with a project is to ask how a feature or a piece of data moves through an application. In the RAG chatbot example that could be something like: **"trace the process of handling a user's query from frontend to backend".** This can be built upon visually by querying Claude Code: **"draw a diagram that illustrates this flow".**

Another general query you can run to quicky understand a project is **"how can I run this application"?**

# Built-In Claude Code Commands

In Claude Code, there are some commonly used built-in commands that are accessed with the prepending forward-slash `/`.

## The `/init` Command and `CLAUDE.md` Files

The built-in command `/init` is good to run at the start of using Claude Code in a project because it initializes a new `CLAUDE.md` file with the codebase documentation. This give Claude Code memory in your codebase.

Things to put in the `CLAUDE.md` file:
* Things that specify how you want things to be run in your project.
* Tests
* Linting
* Any long-term memory Claude Code should have when working with this project.

The three different locations of CLAUDE.md files:

1. `CLAUDE.md` in project root directory
   1. Generated with `/init`.
   2. Committed to source control.
   3. Shared with other engineers.
   4. Can have multiple in nested subfolders for specific instructions for backend, frontend, docs, etc.
2. `CLAUDE.local.md` in project root directory
   1. Contains personal instructions and customizations for Claude. Specific things for __your__ editing and terminal environment.
   2. Not shared with other engineers.
   3. This is automatically added to `.gitignore` and not committed to version control.
3. `~/.claude/CLAUDE.md` in `.claude` dotfolder in your home directory
   1. Used with all projects on your machine. Instructions for Claude to follow on _all_ projects you use it with.
   2. Contains instructions that you want Claude to follow on all projects.
   
The `/ide` command will connect Claude Code with a specific IDE like VS Code or Positron.

To directly add to `CLAUDE.md` in the command line you can prepend `#` and then use a command to write to the file.

For example:
`# use uv to run python files`
`# always use uv to run the server, do not use pip directly`
`# use uv to manage all package dependencies`

# Other Built-In Commands

The `/help` command will profile a summary of all Claude Code built-in commands with a short summary for each.

`/clear` will clear the conversation history and free up context by clearing the context window.

`/compact` will clear the conversation history but keep a summary in context so you can clear up the context window but still keep working on the same feature/workstream.

`ESC` will always stop a Claude Code process in the middle after a command has been issued.