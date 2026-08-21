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
- AI and LLM engineering prompts
- Cloud and infrastructure prompts
- Easily extensible
- Open source

---

## Current Categories

```text
architecture/
ai/
engineering/
go/
node/
python/
```

### Architecture

System design and architectural patterns, including:

- System Design
- Microservices
- Event-Driven Architecture
- Hexagonal Architecture
- Clean Architecture
- CQRS
- Event Sourcing
- Saga
- Serverless
- Distributed Systems
- API Gateway
- Strangler Fig

### AI

AI/LLM engineering topics, including:

- AI Agents
- Embeddings
- Evaluation
- MCP
- Prompt Engineering
- RAG
- Vector Databases
- Vector Search

### Engineering

Language-independent software engineering tasks, including:

- Explain
- Optimize
- Refactor
- Review
- Debug
- Test
- Document
- Security
- Simplify
- Migrate
- Troubleshoot
- Validate

### Language-specific

Language/runtime-specific prompts are organized under:

```text
go/
node/
python/
```

This keeps general engineering guidance separate from language-specific practices.

---

## Planned Categories

The following categories are planned for future expansion:

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

These categories will contain infrastructure, cloud, database, operating-system, version-control, and deployment-specific prompts.

---

## Prompt Structure

Prompts use **plain Markdown with no YAML frontmatter**.

The standard prompt structure is:

```markdown
# Prompt Title

> Short description of the prompt.

# Purpose

Explain the purpose and scope of the prompt.

# Prompt

## Topic

Detailed instructions for the LLM.

## Another Topic

Additional instructions and engineering considerations.

# Expected Output

## Summary

What the response should contain.

## Findings

Relevant findings, implementation details, or recommendations.

# Engineering Principles

- Principle one
- Principle two
- Principle three
```

The exact sections may vary when a prompt benefits from a more specific structure, but prompts should follow the same overall organization and level of detail.

### Design principles

Each prompt should:

- have a clear single responsibility
- explain the role and purpose
- provide detailed, actionable instructions
- define the expected output
- include relevant engineering principles
- remain reusable across projects
- avoid unnecessary verbosity
- avoid project-specific assumptions

---

## Installation (CodeCompanion)

Clone the repository:

```bash
git clone https://github.com/<your-user>/ai-prompt-library.git
```

The toolkit can be loaded through the project's `ai_toolkit` Lua prompt-library module.

Example:

```lua
require("codecompanion").setup({

  prompt_library = require("ai_toolkit"),

  -- other CodeCompanion configuration...

})
```

The `ai_toolkit` module discovers Markdown prompts from the toolkit's `prompts/` directory and exposes them to CodeCompanion.

---

## Usage

Open the CodeCompanion action palette:

```vim
:CodeCompanionActions
```

Refresh the prompt library after adding or changing prompts:

```vim
:CodeCompanionActions Refresh
```

Depending on the Neovim configuration, prompts can also be mapped directly to keys.

For example, the current Go explanation workflow supports:

```text
<leader>ge
```

for explaining the Go symbol under the cursor.

Visual selections can also be passed to prompts that support selection-based interactions.

---

## Prompt Philosophy

The goal of this project is **not** to create generic prompts.

Instead, every prompt should:

- solve a real software engineering task
- follow industry best practices
- produce production-quality output
- remain reusable across projects
- avoid unnecessary verbosity
- encourage maintainable solutions
- make important assumptions and trade-offs explicit

The toolkit should help an experienced engineer work faster, not replace engineering judgment.

---

## Recommended Models

Model recommendations may change as models evolve.

The current CodeCompanion setup is optimized for OpenAI-compatible models exposed through Groq, with the default model configured in the Neovim setup.

For the most demanding architecture and reasoning tasks, use the strongest model available to the environment.

For routine coding and prompt execution, prefer a fast model that provides a good balance of quality, latency, and cost.

---

## Contributing

Contributions are welcome.

When adding new prompts:

- Follow the existing directory structure.
- Keep prompts focused on a single responsibility.
- Use the established Markdown prompt structure.
- Do not add YAML frontmatter.
- Prefer general, reusable prompts over project-specific ones.
- Include `# Purpose`, `# Prompt`, `# Expected Output`, and `# Engineering Principles` where appropriate.
- Document new categories in this README.
- Keep language-specific guidance inside the appropriate language category.

---

## License

MIT License.
