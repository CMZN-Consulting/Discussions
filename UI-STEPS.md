# Web steps for the forum

Only the web settings can do these. Do 1 to 3, then push `main` and run `bash apply.sh`, then 4 to 6. All happen at <https://github.com/CMZN-Consulting/Discussions/discussions>.

1. **Create five categories.** Click the pencil to the right of "Categories", then **New category**, once for each row. Click **Create** after each.

   | Emoji | Title            | Description                                                      | Format                |
   | ----- | ---------------- | ---------------------------------------------------------------- | --------------------- |
   | 📣    | Announcements    | News from CMZN Consulting. Anyone may reply.                     | Announcement          |
   | 📜    | Manifesto        | Agree with, object to or ask about the manifesto.                | Open-ended discussion |
   | 📐    | Paper and proofs | One claim or proof per discussion: what you checked, your doubt. | Open-ended discussion |
   | ❓    | Questions        | Ask about our public work. Mark the reply that answers you.      | Question and answer   |
   | 💬    | Feedback         | Anything else, and appeals against moderation.                   | Open-ended discussion |

2. **Check the five addresses.** Open each category. Its address must end in `/categories/announcements`, `manifesto`, `paper-and-proofs`, `questions` and `feedback`. These are the form file names; a category whose address differs gets no form.
3. **Delete 🏡 General and 🙏 Q&A.** Both were empty when this was written. Click the trash icon to the right of each, choose 💬 Feedback as the destination, and click **Delete & Move**.
4. **Check the forms.** Click **New discussion** and open each category. Every one should show the "Mark your post" field (in Announcements, "Mark this announcement") and refuse to post without it.
5. **Post and pin a welcome.** In 📣 Announcements, title "Welcome", body: "What this forum is for, its categories, the mark and how moderation works: <https://github.com/CMZN-Consulting/Discussions#readme>". Mark it Plain. Then, on the post, click **Pin discussion**.
6. **Watch the forum.** On the repository's page, **Watch** > **Custom** > tick **Discussions** > **Apply**.
