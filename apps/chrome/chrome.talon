app: chrome
-
tag(): browser
tag(): user.tabs

profile switch: user.chrome_mod("shift-m")

tab hunt: user.chrome_mod("shift-a")

tab hunt <user.text>$:
    user.chrome_mod("shift-a")
    sleep(200ms)
    insert("{text}")
    key(down)

# Resume flow in debugger
resume: key(cmd-\)
