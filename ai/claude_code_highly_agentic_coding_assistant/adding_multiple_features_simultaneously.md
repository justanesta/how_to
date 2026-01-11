# Making Your Own Custom `/` Claude Commands

Make the folder `.claude/commands/` and make a markdown file with the name of the command you'd like to add. Something like `implement-feature.md`. 

The first line of the command file will be the description that is given for the command in Claude Code.

Reference arguments in the new command file with the `$ARGUMENTS` section in the file name. Putting this in the file will help Claude Code catch the arguments provided to it.

You can also put in specific instructions the command should follow after `IMPORTANT:` at the end of the file. An example:

```
IMPORTANT: Only do this for front-end features. Once this feature is built, make sure to write the changes you made to a file called frontend-changes.md. Do not ask for permissions to modify this file, assume you can always do it.
```

These are great for specific commands that are unique to a given project and not every project you use Claude Code with.

## Claude Permissions Settings

Inside of the `.claude/settings.local.json` file you can specify which commands you've allowed so you don't have to specify every single time. This can be done in a JSON object like:

```json
{
    "permissions": {
        "allow": [
            "Bash(find:*)
            ...
        ]
    }
}
```

Additionally, the `/permissions` command will allow you to manage allow & deny tool permissions rules.

# Working in Parallel with Claude Code

Git worktrees allow for creating copies of a codebase for multiple instances of Claude Code to work in isolation and then once completed merge those codebases together.

To work with Git worktrees make a folder at your repository root called `.trees`. Then, add a Git worktree with the command `git worktree add .trees/<worktree name>`. So for example `git worktree add .trees/ui_feature`.

To confirm you've created the worktrees, use the command `git branch -a` which should list them in different colors than the branches.

Then, open up a terminal in each new folder you created within the `.trees/` folder that should correspond to the Git worktree name. Then open up Claude Code in each of those terminals which should allow them to work in parallel without overwriting files and then merging in everything once work is done.

Once work on each Git worktree is done, add and commit each like you would with a given branch. Make sure commit messages are descriptive to ensure merge is smooth.

You can use Claude to then merge in the worktrees with a command your main terminal like:

`use the git merge command to merge in all of the worktrees in the .trees folder and fix any conflicts if there are any.`

Then commit all the changes with the resolved merge conflicts (if any).