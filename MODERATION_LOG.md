# Moderation log

Every moderation action taken in the CMZN Consulting discussions is recorded here, in public, by the person who took it.

## Format

Entries are added at the end of this file and are never edited or removed. A correction is a new entry that names the entry it corrects. The history of this file in git is its record of when each entry was written.

Each entry has this form:

<!-- prettier-ignore -->
```text
### <number> · <time, UTC> · <action>

- Target: <link to the discussion or comment>
- Reason class: <unmarked | spam | attack | forced>
- Reason: <one or two sentences>
- By: <GitHub handle of the moderator, a named person>
- Evidence: <links, or "the target itself">
- Expires: <time, UTC, or "none">
- Appeal: <link to the appeal discussion, or "none">
- Corrects: <entry number, or "none">
```

Entries are numbered from 1, in order. The actions, and what each one does on GitHub:

| Action      | What it means                                           | On GitHub                                                                                                                                                     |
| ----------- | ------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `flag`      | adds a mark the speaker left out; removes nothing       | a `flag:` label and a moderator reply                                                                                                                         |
| `hide`      | hides spam or an attack; removes nothing                | a reply is hidden and anyone can expand it; an opening post is locked and its text replaced with a moderator's note, the original staying in its edit history |
| `hold`      | stops replies; the text stays                           | the discussion is locked                                                                                                                                      |
| `restrict`  | limits who may post, for a stated time                  | an interaction limit                                                                                                                                          |
| `suspend`   | stops an account from taking part, for a stated time    | a block with an expiry                                                                                                                                        |
| `revoke`    | stops an account from taking part, with no expiry       | a block without expiry                                                                                                                                        |
| `release`   | ends an earlier `hide`, `hold`, `restrict` or `suspend` | the reply or the original text is shown again, or the lock, limit or block is lifted                                                                          |
| `tombstone` | records a removal that GitHub or the law forced         | the post is gone from GitHub; the entry says who required it                                                                                                  |

The reason classes:

- `unmarked`: the post is contested, uncertain or unsettling and its speaker did not say so. It is only ever flagged. No post is removed, hidden or locked for lacking a mark.
- `spam`: bulk, commercial or off-topic posting.
- `attack`: text meant to act on a reader's software rather than on the reader's understanding, such as hidden text, instructions aimed at tools, or requests for credentials.
- `forced`: GitHub or the law required the action.

Blocking an account on GitHub also deletes that account's votes in this forum; a `suspend` or `revoke` entry says so when it happens.

## Entries

The first entry will follow this line.
