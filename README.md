# AI Engineering Toolkit

A curated collection of reusable AI prompts, workflows, and engineering resources for professional software development.

The library is designed to help developers perform common engineering tasks consistently across multiple languages, frameworks, cloud providers, and architectural styles.

Although optimized for **CodeCompanion**, the prompts are plain Markdown and can be used with any modern LLM.

---

## Features

- Well-organized prompt library
- Production-oriented software engineering prompts
- Consistent structure and style
- Language-specific and architecture-specific prompts
- Cloud and infrastructure prompts
- Easily extensible
- Open source

---

## Current Categories

```text
architecture/
go/
node/
python/
```

Planned:

```text
aws/
docker/
gcp/
git/
kubernetes/
linux/
nosql/
sql/
terraform/
```

---

## Prompt Structure

Each prompt is a Markdown file with YAML frontmatter.

Example:

```yaml
---
name: Go Review
alias: go-review
description: Review Go code for correctness, maintainability, performance and idiomatic Go practices.
interaction: chat
---
```

---

## Installation (CodeCompanion)

Clone the repository:

```bash
git clone https://github.com/<your-user>/ai-prompt-library.git
```

Configure CodeCompanion:

```lua
prompt_library = {
  markdown = {
    dirs = {
      vim.fn.expand("~/Developer/ai-prompt-library"),
    },
  },
}
```

Refresh the prompt library:

```vim
:CodeCompanionActions refresh
```

---

## Usage

Open the prompt palette:

```vim
:CodeCompanionActions
```

or invoke prompts directly (depending on your CodeCompanion configuration):

```text
Architecture Review
Go Review
Python RAG
Node REST API
...
```

---

## Philosophy

The goal of this project is **not** to create generic prompts.

Instead, every prompt should:

- solve a real software engineering task
- follow industry best practices
- produce production-quality output
- remain reusable across projects
- avoid unnecessary verbosity
- encourage maintainable solutions

---

## Recommended Models

⭐⭐⭐⭐⭐ GPT-5.5
Best overall quality for architecture, prompt engineering, documentation, and complex reasoning.

⭐⭐⭐⭐ GPT-OSS-120B (Groq)
Excellent for architecture reviews, large refactorings, and software engineering.

⭐⭐⭐⭐ GPT-OSS-20B (Groq)
Recommended default for daily coding inside CodeCompanion.

⭐⭐⭐ Qwen 3.6 27B (Groq)
Fast and capable general-purpose coding model.
## Contributing

---

## Contributions are welcome.

When adding new prompts:

- Follow the existing directory structure.
- Keep prompts focused on a single responsibility.
- Use consistent YAML frontmatter.
- Prefer general, reusable prompts over project-specific ones.
- Document new categories in this README.

---

## License

MIT License.
