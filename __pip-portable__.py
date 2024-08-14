with open("Lib\\site-packages\\pip\\_vendor\\distlib\\scripts.py", "r", encoding="utf-8", newline="") as f:
    txt = f.read()
    f.close()
with open("Lib\\site-packages\\pip\\_vendor\\distlib\\scripts.py", "w", encoding="utf-8", newline="") as f:
    f.write(txt.replace("    executable = None  # for shebangs", "    executable = 'python%s' % sysconfig.get_config_var('EXE')  # portable"))
    f.close()
