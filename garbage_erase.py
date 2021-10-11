import os
import shutil

GARBAGE_LISTS = [
    '~/.bash_profile',
    '~/.bashrc',
    '~/.vim',
    '~/.vimrc',
    '~/.tmux.conf'
]

def yes_or_no(question, default="n"):
    prompt = "%s (y/[n]) " % question

    answer = input(prompt).strip().lower()

    if not answer:
        answer = default

    if answer == "y":
        return True
    return False

def rm_garbage():
    found = []
    for garbage_file in GARBAGE_LISTS:
        expandfile = os.path.expanduser(garbage_file)
        if os.path.exists(expandfile):
            found.append(expandfile)
            print("    %s" % garbage_file)

    if len(found) == 0:
        print("Not found")
        return

    if yes_or_no("Remove all?", default="n"):
        for found_file in found:
            if os.path.isfile(found_file):
                os.remove(found_file)
            else:
                shutil.rmtree(found_file)
        print("Compleated")

if __name__ == '__main__':
    rm_garbage()