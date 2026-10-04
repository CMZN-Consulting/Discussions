#!/usr/bin/env bash
# The forum's settings that GitHub's command line can write. Run by hand, once, after the
# web steps 1 to 3 of UI-STEPS.md and after this repository's main branch is pushed.
# The settings it cannot write, such as categories, pins and watching, are in UI-STEPS.md.

set -euo pipefail # stop at the first failed command
repo="CMZN-Consulting/Discussions" # every command below names this repository explicitly

gh auth status # refuse to start without a valid login

# The label every form except Announcements puts on a new post; remove it once the post is read.
gh label create "new" --repo "$repo" --color "0969DA" --description "Not yet read by a moderator. Removed once read." --force

# The moderator's marks: added when a speaker left a mark out (MODERATION_LOG.md, action flag).
gh label create "flag: contested" --repo "$repo" --color "BC4C00" --description "Some will dispute it. A moderator added the mark its speaker left out; see the moderation log." --force # mark 1 of 3
gh label create "flag: uncertain" --repo "$repo" --color "9A6700" --description "It may not hold. A moderator added the mark its speaker left out; see the moderation log." --force # mark 2 of 3
gh label create "flag: unsettling" --repo "$repo" --color "8250DF" --description "It may disturb a reader. A moderator added the mark its speaker left out; see the moderation log." --force # mark 3 of 3

# GitHub's nine stock labels are for tracking bugs; the forum uses only the four above. Delete those still present.
existing=$(gh label list --repo "$repo" --limit 100 --json name --jq '.[].name')
for l in bug documentation duplicate enhancement "good first issue" "help wanted" invalid question wontfix; do
  if grep -qxF "$l" <<<"$existing"; then gh label delete "$l" --repo "$repo" --yes; fi
done

# Posts come only through the discussion forms, so issues, the wiki and projects are off.
gh repo edit "$repo" --enable-issues=false --enable-wiki=false --enable-projects=false

# The repository's homepage link and description.
gh repo edit "$repo" --homepage "https://github.com/CMZN-Consulting" --description "The public forum of CMZN Consulting: AI and quant-finance research, questions and feedback. Agree, object or ask."

gh label list --repo "$repo" # show the result
