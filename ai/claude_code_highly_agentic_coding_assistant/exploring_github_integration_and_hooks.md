You can resume a previous conversation you had with Claude Codde using the `claude --resume` flag to start up Claude Code.

You can then remove the Git Worktrees and commit changes by telling Claude:

```
remove the .trees folder and the underlying worktrees and once you're done push this code to github
```

# Install the GitHub Claude Integration

Use the built-in command `/install-github-app` and follow the additional CLI install instructions for GitHub. Install the GitHub App in the current repository.

This integration will allow users to use Claude Code in GitHub pull requests and issues.

This will also create a `.github/workflows/claude-code-review.yml` file to run Claude Code with GitHub Actions for things like "Claude Code Code Review".

You can also tag Claude in GitHub issues using the direct `@claude` like you would a GitHub user to have Claude start working on submitted issues.

# Hooks for Claude Code

## What Are Hooks
Hooks are shell commands you can register to run during Claude Code processing.
* Each hook event has its own input and output behavior
* Multiple hooks can be registered per event, executed in parallel
* Any changes to hooks outside of `/hooks` require a restart
* Timeout: 60 seconds.

We can inject specific code to run at any point in the life cycle of Claude Code's operation. Like a PreToolUse Hook before Tool Execution and a PosToolUse Hook for after Tool Execution.

These can be managed with the `/hooks` built-in command in Claude Code.

This is what an example hook configuration looks like:

```
Event: PostToolUse — After tool execution
Matcher: Read|Grep
Command: say 'All done'
```
You can also save hooks in local project settings `.claude/settings.local.json`, project settings `.claude/settings.json`, or user settings `~/.claude/settings.json`

Hooks are great things to run tests or run linters automatically after making some changes or potentially stopping tools from being used if not desired or even having Claude review itself when certain things happen.

Claude Code can also be used to write hooks for you as well.