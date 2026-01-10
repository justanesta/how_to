# Uses of Claude Code

1. Discover
   1. Explore codebase and history
   2. Search documentation
   3. Onboard & setup
2. Design
   1. Plan project
   2. Develop tech specs
   3. Define architecture
3. Build
   1. Implement code
   2. Write and execute tests
   3. Create commits and PRs
4. Deploy
   1. Automate CI/CD
   2. Configure environments
   3. Manage deployments
5. Support & Scale
   1. Debug errors
   2. Large-scale refactor
   3. Monitor usage and performance

# Extend with MCP servers
Claude code is extensible. You can add additional tools to Claude Code by connecting MCP servers. Adding tools allows customization for your particular worflow.

Model Context Protocol (MCP) servers is an open-source, model agnostic protocol that allows for data and AI systems to communicate easily.

# Claude's Memory

* Memory across sessions (`claude.md`):
  * In `claude.md` files, you can define your style guidelines and common commands.
  * `claude.md` files get **automatically** loaded into Claude Code's context when launched.
* Conversation history:
  * Automatically stored locally on your machine
  * You can choose to clear conversation of your current session.
  * You can choose to resume the conversation in a future session.
  * Past conversations are not automatically included in the context. You manually ask Claude Code to continue a previous conversation.
