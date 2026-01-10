# File References and Plan Mode
Giving Claude Code the tools out of the box to figure out what needs to be edited to accomplish a given task helps extend the effectiveness of the tool. You can do this in multiple ways:

* Referencing relevant files with the `@` symbol like `@analysis.R` or `@docs/WORKFLOW.md`. Use tab to complete the full file name.
* Plan mode will help you as the user refine the specific steps that need to be done for complex chains of tasks **before** Claude Code starts modifying files. This can be enabled with `Shift + Tab`. Claude will do some thorough exploration and planning before writing any code.

Claude Code can also analyze screenshots pasted into the terminal window to reference changes that need to be made.

If you want to add a new line to a prompt to Claude Code in the terminal you can use backslash and ENTER `\ + ENTER` to get to a new line.

# MCP (Model Context Protocol) Servers
MCP allows for Claude Code to gain additional functionality from external data sources and systems.

An example: The [Playwrite MCP server](https://github.com/microsoft/playwright-mcp) to let Claude take screenshots of pages and analyze them.

To add an MCP server use the command:
`claude mcp add <server name> <server start command>`

In the playwrite example:
`claude mcp add playwrite npx @playwright/mcp@latest`

All MCP servers will specify the necessary commands to connect to that particular MCP server.

The `/mcp` built-in command lets users manage MCP servers in Claude Code. MCP servers allow users to use more complex commands like:

`Using the playwright MCP server visit 127.0.0.1:8000 and view the new chat button. I want that button to look the same as the other links below for Courses and Try Asking. Make sure this is left aligned and that the border is removed.`

