# Commands only active when editing a prompt draft in VS Code

# mode: user.sketch
# and not mode: sleep
app: cursor
win.filename: .PROMPT_DRAFT.md
-

# Quick formatting commands
boom|boomer: key(. space)
spam: key(, space)
void: key(space)
clap: key(enter)
clip:
    key(space)
    edit.paste()
    key(space)

prom save | draft save: user.prompt_save()
prom discard | draft discard: user.prompt_discard()
prom chat:
    user.prompt_save()
    user.run_rpc_command("composer.newAgentChat")
    user.paste()
prom sketch:
    user.prompt_save()
    user.run_rpc_command("workbench.action.tasks.runTask", "sketch clipboard")
prom (claude | bot | term):
    user.prompt_save()
    user.run_rpc_command("workbench.action.terminal.focus")
    sleep(0.1)
    edit.paste()
prom sketch branch:
    user.prompt_save()
    user.run_rpc_command("workbench.action.tasks.runTask", "sketch clipboard in worktree")
prom git show:
    user.prompt_save()
    user.run_rpc_command("workbench.action.tasks.runTask", "Git auto-query")