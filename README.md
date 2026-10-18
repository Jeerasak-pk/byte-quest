# BYTE QUEST

A responsive coding practice arcade for Python, JavaScript, C++, Go, TypeScript, Rust, C#, PHP, Ruby, Kotlin, HTML, CSS, SQL, and Java. The interface is available in English, Thai, and Spanish, and remembers the learner's language choice. Lessons run as a static website with no build step.

The 14 courses contain 116 topic-named lessons, from beginner syntax through concepts such as TypeScript unions and generics, Rust ownership and Result, C# classes and exceptions, PHP arrays and functions, Ruby blocks and iterators, and Kotlin null safety and data classes. Each lesson includes an explanation, syntax example, takeaway, warm-up, and separate challenge. Lessons link to maintained language documentation; their syntax and exercises were checked against those references. Future lessons can be previewed from the lesson picker.

The quest structure takes high-level inspiration from Codédex's playful, bite-sized coding lessons and progression systems. Byte Quest's explanations, examples, prompts, and checks are written or adapted for this project; it does not copy Codédex lesson text or visual assets. For deeper study, each lesson links to maintained primary documentation:

- Python: [The Python Tutorial](https://docs.python.org/3/tutorial/index.html) and the [Python Language Reference](https://docs.python.org/3/reference/index.html) from the Python Software Foundation.
- JavaScript: [JavaScript Guide](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide) and the [JavaScript Reference](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference) from MDN.
- HTML: [Structuring content with HTML](https://developer.mozilla.org/en-US/docs/Learn_web_development/Core/Structuring_content) and the [HTML elements reference](https://developer.mozilla.org/en-US/docs/Web/HTML/Reference/Elements) from MDN.
- CSS: [CSS styling basics](https://developer.mozilla.org/en-US/docs/Learn_web_development/Core/Styling_basics), [CSS layout](https://developer.mozilla.org/en-US/docs/Learn_web_development/Core/CSS_layout), and the [CSS reference](https://developer.mozilla.org/en-US/docs/Web/CSS/Reference) from MDN.
- SQL: [PostgreSQL Tutorial](https://www.postgresql.org/docs/current/tutorial.html) and [SQL command reference](https://www.postgresql.org/docs/current/sql-commands.html), including queries, joins, aggregates, updates, transactions, and more.
- Java: [Learn Java](https://dev.java/learn/) from Dev.java and the [Java SE specifications](https://docs.oracle.com/javase/specs/), covering language basics, object-oriented programming, collections, exceptions, and more.
- C++: [C++ basic concepts](https://learn.microsoft.com/en-us/cpp/cpp/basic-concepts-cpp?view=msvc-170) and the [C++ language reference](https://learn.microsoft.com/en-us/cpp/cpp/cpp-language-reference?view=msvc-170) from Microsoft Learn.
- Go: [Getting started with Go](https://go.dev/doc/tutorial/) and the [Go language specification](https://go.dev/ref/spec) from the Go project.
- TypeScript: the [TypeScript Handbook](https://www.typescriptlang.org/docs/handbook/) and [basic types guide](https://www.typescriptlang.org/docs/handbook/2/basic-types.html).
- Rust: [The Rust Programming Language](https://doc.rust-lang.org/book/) and the [Rust Reference](https://doc.rust-lang.org/reference/).
- C#: [A tour of C#](https://learn.microsoft.com/en-us/dotnet/csharp/tour-of-csharp/overview) and the [C# language reference](https://learn.microsoft.com/en-us/dotnet/csharp/language-reference/) from Microsoft Learn.
- PHP: the [PHP Getting Started guide](https://www.php.net/manual/en/getting-started.php) and [language reference](https://www.php.net/manual/en/langref.php).
- Ruby: [Ruby in Twenty Minutes](https://www.ruby-lang.org/en/documentation/quickstart/) and the [Ruby documentation index](https://www.ruby-lang.org/en/documentation/).
- Kotlin: [Kotlin basic syntax](https://kotlinlang.org/docs/basic-syntax.html) and the [Kotlin language documentation](https://kotlinlang.org/docs/).

Challenge checks validate required syntax and task-specific structure without executing learner code. Failed submissions show line-level diagnostics with a syntax, markup, type, or exercise-requirement category. They are designed for guided practice, not as a secure or exhaustive compiler/runtime judge. Rust ownership and complete static type analysis are not fully modeled; use the real compiler for definitive diagnostics.

The built-in quests are an introductory, hands-on path through core syntax and concepts, not a complete replacement for those full references or a complete professional curriculum. Learners can use the source links to continue into each documentation set's broader topics.

## Run locally

Open PowerShell in this folder and run `python -m http.server 4173`, then visit `http://localhost:4173`.

## Deploy (without a build)

Upload the contents of this folder as the site root to a static host. No package installation or build command is required. The included `404.html` is a branded fallback. `_headers` supplies security headers on Netlify and Cloudflare Pages; `vercel.json` supplies them on Vercel. Other hosts should be configured to send the same headers. The Content Security Policy currently allows the Supabase project and jsDelivr/Google Fonts domains configured by this site; update it if you change providers or the Supabase project.

Use HTTPS and set the production URL as the canonical auth redirect in Supabase: **Authentication → URL Configuration → Site URL** and **Redirect URLs**. Add each local and production origin you actually use. If hosting under a subdirectory, verify the host's base path and auth redirect behavior first.

## Progress and accounts

- Learners can play without an account. XP, drafts, streaks, and completed lessons are saved in browser local storage.
- Sign-in uses Supabase Auth email links. Signed-in progress syncs to the configured Supabase project.
- The browser client contains only the public anon/publishable key. Never place a `service_role` or secret key in this repository or in browser code.
- To enable cloud sync, review and apply `supabase-schema.sql` in the Supabase SQL Editor, confirm RLS is enabled, and configure the allowed redirect URLs. Auth emails must use the correct production redirect.
- Answers are checked in the browser without executing or compiling submitted code. Line diagnostics use language-aware structural checks plus task requirements; treat them as learning guidance rather than compiler output.

## Files

- `index.html`, `app.css`, `app.js` — site, responsive styling, lessons, locale strings, syntax checks, and progress
- `supabase-config.js` — public Supabase URL and anon key
- `supabase-schema.sql` — progress table and row-level security policies
- `_headers`, `vercel.json` — security headers for supported static hosts
- `site.webmanifest`, `favicon.svg`, `robots.txt`, `404.html` — public site metadata and fallbacks

## Before launch

1. Review the Supabase Auth redirect allowlist and run the SQL schema if cloud sync is wanted.
2. Open the deployed HTTPS URL and check the browser console for blocked assets or CSP errors.
3. Test English, Thai, and Spanish; a lesson in every course; local progress; and email sign-in if enabled.
4. If you deploy on a host other than Netlify, Cloudflare Pages, or Vercel, configure the headers described in `_headers` in that host's settings.
