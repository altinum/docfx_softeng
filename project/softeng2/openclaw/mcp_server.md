# MCP — Model Context Protocol

MCP stands for **Model Context Protocol** — an open standard created by Anthropic that gives AI models a standardized way to connect to external tools and data sources.

Think of it like USB for AI. Before MCP, every tool integration was custom-built — one way to connect to GitHub, a completely different way to connect to a database, etc. MCP standardizes the interface so any AI can talk to any tool that speaks the protocol.

### How it works

```
Your AI (Claude, OpenClaw, etc.)
        ↕  MCP protocol
    MCP Server
        ↕
  External tool / data
  (filesystem, database, API, browser...)
```

An MCP server is just a small program that wraps a tool or data source and exposes it through the standard MCP interface. The AI connects to it, discovers what it can do, and calls its functions as needed.

### Concrete examples

| MCP Server                                  | What it gives the AI access to       |
| ------------------------------------------- | ------------------------------------ |
| `@openclaw-mcp/http-fetch`                  | Make HTTP requests to REST APIs      |
| `@modelcontextprotocol/server-filesystem`   | Read/write local files               |
| `@modelcontextprotocol/server-github`       | GitHub repos, issues, PRs            |
| `@modelcontextprotocol/server-postgres`     | Query a PostgreSQL database directly |
| `@modelcontextprotocol/server-brave-search` | Web search                           |
| `@modelcontextprotocol/server-puppeteer`    | Control a browser                    |

### Why it matters

Before MCP, if you wanted Claude to access your database *and* your calendar *and* your GitHub, you'd need three completely different custom integrations. With MCP, you just run three MCP servers — the AI side stays the same regardless.

In the Northwind example, the `http-fetch` MCP server was the bridge that let OpenClaw's agent actually make the `curl`-style HTTP calls to the REST API. The `SKILL.md` described *what* to do; the MCP server provided the *mechanism* to do it.

Claude (this chat interface) also uses MCP — it's how I'm connected to tools like web search, Google Calendar, and Gmail in this conversation.