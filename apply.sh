#!/usr/bin/env bash
# The forum's settings that GitHub's command line can write. Run by hand, once, after the
# web steps 1 to 3 of UI-STEPS.md and after this repository's main branch is pushed.
# Categories, pins and watching have no API; they are in UI-STEPS.md.

set -euo pipefail # stop at the first failed command
repo="CMZN-Consulting/Discussions" # every command below names this repository explicitly

gh auth status # refuse to start without a valid login

# The label every form except Announcements puts on a new post; remove it once the post is read.
gh label create "new" --repo "$repo" --color "0E8A16" --description "Not yet read by a moderator" --force

# The moderator's marks: added when a speaker left a mark out (MODERATION_LOG.md, action flag).
gh label create "flag: contested" --repo "$repo" --color "D93F0B" --description "Marked contested by a moderator; see the moderation log" --force # mark 1 of 3
gh label create "flag: uncertain" --repo "$repo" --color "FBCA04" --description "Marked uncertain by a moderator; see the moderation log" --force # mark 2 of 3
gh label create "flag: unsettling" --repo "$repo" --color "5319E7" --description "Marked unsettling by a moderator; see the moderation log" --force # mark 3 of 3

# The forum's sidebar shows this link; today it points at a GitHub Pages site that does not exist (404).
gh repo edit "$repo" --homepage "https://github.com/CMZN-Consulting/manifesto"

# YOUR CHOICE, off unless you remove the leading "# " of a line below.
# GitHub's nine stock issue labels also show up when labelling discussions. Delete them:
# for l in bug documentation duplicate enhancement "good first issue" "help wanted" invalid question wontfix; do gh label delete "$l" --repo "$repo" --yes; done
# Issues are on and there are none; the forum takes all posts as discussions. Turn issues off:
# gh repo edit "$repo" --enable-issues=false

gh label list --repo "$repo" # show the result
