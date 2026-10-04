# Web steps for the forum

Only the web settings can do these. Do 1 to 3, then push `main` and run `bash apply.sh`, then 4 to 7. All happen at <https://github.com/orgs/CMZN-Consulting/discussions>.

1. **Make the sections and categories of the [README's table](README.md#categories).** Click the pencil to the right of "Categories" and rename 🙏 Q&A to ❓ Questions. Then click **New section** once for each of the two sections, and **New category** once for each other category, choosing its section, or no section where the table says None. The format is Announcement for 📣 Announcements, Question and answer for ❓ Questions, and Open-ended discussion for the others.
2. **Check the seven addresses.** Open each category. Its address must end in the name of its form in `.github/DISCUSSION_TEMPLATE/`: `announcements`, `questions`, `feedback`, `manifesto`, `papers-and-proofs-ai`, `option-pricing` and `papers-and-proofs-quant-finance`. A category whose address differs gets no form, and renaming a category changes its address.
3. **Delete 🏡 General.** It was empty when this was written. Click the trash icon to its right, choose 💬 Feedback as the destination, and click **Delete & Move**.
4. **Check the forms.** Click **New discussion** and open each category. Every one should show the "Mark your post" field (in Announcements, "Mark this announcement") and refuse to post without it.
5. **Post and pin a welcome.** In 📣 Announcements, title "Welcome", body: "What this forum is for, its categories, the mark and how moderation works: <https://github.com/CMZN-Consulting/Discussions#readme>". Mark it Plain. Then, on the post, click **Pin discussion**.
6. **Watch the forum.** On the repository's page, **Watch** > **Custom** > tick **Discussions** > **Apply**.
7. **Close the other ways to post.** In the repository's **Settings**, under **General**, limit pull requests to collaborators and switch commit comments off. `apply.sh` has already switched issues, the wiki and projects off.
