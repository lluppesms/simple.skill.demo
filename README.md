# 🛠️ Build Your First GitHub Copilot Skill

A hands-on demo showing how to build a **GitHub Copilot Skill** from scratch — starting with a one-liner and evolving into something genuinely useful.

---

## What is a Copilot Skill?

A **skill** is a Markdown file that gives GitHub Copilot specialized knowledge and behavior for a specific domain or task. When Copilot detects a matching trigger phrase, it loads the skill and follows its instructions — like a mini-prompt baked into your repo.

Skills live at:
```
.github/skills/<skill-name>/SKILL.md
```

---

## What's in This Repo

This repo walks through three versions of the same `hello-world` skill, each adding more capability:

| Version | What it does |
|---------|--------------|
| **v1** | Responds to "hello world" with a cheerful ASCII art greeting |
| **v2** | Adds system info (OS, CPU, memory) via an inline PowerShell script |
| **v3** | Runs a dedicated script to gather richer system + user context |

The working skill is in `.github/skills/hello-world/SKILL.md`.  
The progression is in `solution/hello-world-skill/v1`, `v2`, and `v3`.

---

## Try It Yourself

### Step 1 — Look at the skill file

Open [`.github/skills/hello-world/SKILL.md`](.github/skills/hello-world/SKILL.md) and read the instructions inside.

### Step 2 — Trigger the skill

In GitHub Copilot Chat, type:

```
hello world
```

Copilot will detect the trigger, load the skill, and follow its instructions.

### Step 3 — Evolve it

Compare the versions in `solution/hello-world-skill/` to see how the skill grows from a simple greeting to one that runs a script and personalizes the response.

---

## Anatomy of a SKILL.md

```markdown
---
name: hello-world
description: A simple skill that responds with "Hello, World!" when invoked.
---

# Hello World
Use the `hello-world` skill to get a friendly greeting whenever the user 
types the phrase "hello world"...
```

- **Frontmatter** — `name` and `description` identify the skill
- **Body** — natural language instructions Copilot will follow when the skill is active

That's it. No code, no config, no build step.

---

## Repo Structure

```
.github/
  skills/
    hello-world/
      SKILL.md          ← the active skill
solution/
  hello-world-skill/
    v1/SKILL.md         ← basic greeting
    v2/SKILL.md         ← + inline system info script
    v3/SKILL.md         ← + external script reference
```

---

## Next Steps

- Swap in `v2` or `v3` to see the skill evolve
- Write your own skill for a domain you care about
- Chain multiple skills together for more complex workflows

---

> Skills are a lightweight, powerful way to encode team knowledge directly into your GitHub Copilot experience — no plugins, no extensions, just Markdown.
