# Creating the App

Create a new nextJS app in your current working directory with the command:
`npx create-next-app@latest .`

In Figma, go to Preferences --> Enable Dev Mode MCP server. Then copy the layer that currently contains the layout of what you'd like to build.

## Add the MCP servers

Add the necessary MCP servers into Claude Code with the commands:

```
claude mcp add --transport http figma-dev-mode-mcp-server http://127.0.0.1:3845/mcp
claude mcp add playwright npx @playwright/mcp@latest # Done locally and for each project
```
To check you have configured your MCP servers correctly you can use the `/mcp` command in Claude Code and it will show you currently configured MCP servers. Click into a specific MCP server option to get the tools available for that server. Here is the [Anthropic documentation](https://code.claude.com/docs/en/mcp) for managing MCP servers in Claude Code. 

An example first query with the Figma and Playwright MCP servers:


```
Using the following figma mockup <figma URL> use the figma dev MCP server to analyze the mockup and build the underlying code in this next.js application. Use the recharts library for creating charts to make this a web application. Check how this application looks using the playwrigth MCP server and verify it looks as close to the mock as possible.
```

Always remember the Opus model is better for complex tasks. You can specify models with the built-in command `/model`

## Research
You can use Claude Code's ability to research on the web for complex tasks. In this example a query like `populate these charts with real world data from FRED` will actually configure your web app to use the FRED API to power the dashboard based on web research from the FRED documentation. 