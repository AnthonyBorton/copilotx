# Copilot X

A collection of files and links curated to help demonstrate features available in Copilot X.


# Home page for Copilot X

Interested in signing up for our Copilot X experiments, the following page allows you to sign up for lots of different experiements.

Visit [https://gh.io/copilotx](https://gh.io/copilotx)

# Copilot Chat

Filename | My usage
--- | ---
utils.py | I use this to show some of the core features of Copilot Chat. The file comes from the awesome [YouTube video](https://www.youtube.com/watch?v=3surPGP7_4o) that Allison (@2percentsilk) recorded. Watch the video for the use cases.
parse_expenses.py | Also from the awesome video mentioned in the previous row
test.asm | I like to show Copilot Chat translating this Assembly language into Python
genericListener.cob | I usually show Copilot Chat translating this COBOL into Java
vulnerable.php | I ask Copilot Chat if this code is secure. It tell me that it's not. I then ask Copilot Chat to fix the code.
transaction.js | I use this to show Chat rewriting the calculateTax function to look up the tax rate. "calculateTax needs to take the zip code and look up the tax rate". Note that it will likely invent an API.
login-service.ts | Ask Copilot Chat to add a function to check if a password has been breached. It will usually suggest code to call the haveibeenpwnd API. Note this also uses security-database-service.ts so the code is a little cleaner.
obfuscated.c, obfuscated.java | Ask Copilot chat to explain the code. The first is obfuscated C code that does strange things with pointers, but Copilot seems to be able to interpret it. The second is Java with unreadable class and variable names, however Copilot identifies that it's just calculating the area of a circle. A great second step is asking to make it readable.
mystery.py | An extreme example of what Copilot Chat can do (likely because it's a famous example). Ask it to explain the code. Ideally run the code (you'll need python 2.7 - run `py -2.7 mystery.py`) then open the resulting M.bmp file which should get built on screen as you watch.
wordReverse.js | Without using my hands, I talk with Copilot Voice and explain it step by step what I want to code. I also ask for some changes on the fly and to explain the code.
romanConverter.test.js | Copilot Chat generates unit tests covering edge cases for a function that converts Roman numerals to integers. I did not provide the number to letter mapping, it got it right by itself.
move-commit-new-branch.sh | Copilot CLI generates and explains me the commands to move the last commit to a new branch.


# Copilot 4 docs

We’re exploring a way to get you the information you need, faster. By surfacing the most relevant content for questions with tailored summaries that help connect the dots, Copilot for docs saves developers from scouring reams of documentation.

Open Copilot4docs using [https://copilot4docs.githubnext.com/](https://copilot4docs.githubnext.com/)


# What's Next? See Githubnext

Open Githubnext using [https://githubnext.com/](https://githubnext.com/)