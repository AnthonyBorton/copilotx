# Prompt: git? I want to move the last commit on a new branch


# ──────────────────── Command ────────────────────

git branch new-branch
git reset --hard HEAD~1
git switch new-branch

# ────────────────── Explanation ──────────────────
# 
# ○ git branch new-branch creates a new branch called new-branch.
# ○ git reset resets the current branch to a previous commit.
#   ◆ --hard means that we also discard any changes made to the files in the working directory.
#   ◆ HEAD~1 specifies that we reset the commit one before the current one.
# ○ git switch new-branch switches to the new-branch branch.

