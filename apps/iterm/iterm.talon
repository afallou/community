os: mac
app: iterm2
-
tag(): terminal
# todo: filemanager support
#tag(): user.file_manager
tag(): user.generic_unix_shell
tag(): user.git
tag(): user.kubectl
tag(): user.tabs
tag(): user.readline

split: key(cmd-shift-d)
split vertical: key(cmd-d)
blow dog: key(cmd-shift-enter)
sigterm: key(ctrl-c)

tab <number_small>: key("cmd-{number_small}")
pane <number_small>: key("ctrl-{number_small}")

tab final: key("cmd-9")
pane final: key("ctrl-9")

tab next: key("cmd-shift-]")
pane next: key("ctrl-shift-]")