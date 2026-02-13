# ERC-8004 Agent Creator

> On-chain AI agent identity registration dApp with multi-language SDKs.

## Project Structure

- `index.html` — Single-file dApp (HTML/CSS/JS, ~2400 lines)
- `sdks/` — Python, Go, Rust, Java/Kotlin, Swift SDKs
- `search-service/` — Agent search & indexing (TypeScript)
- `agent-runtime/` — Agent execution runtime
- `cli/` — Command-line interface
- `vscode-extension/` — VS Code extension
- `mcp-server/` — MCP server for agent operations
- `locales/` — 20 language translations (JSON)
- `docs/` — Documentation

## Smart Contracts

- BSC Testnet Identity: `0x8004A818BFB912233c491871b3d84c89A494BD9e`
- BSC Mainnet Identity: `0x8004A169FB4a3325136EB29fA0ceB6D2e539a432`

## Commands

```bash
cd sdks/python && pip install -e .
cd sdks/go && go test ./...
cd sdks/rust && cargo test
cd search-service && npm run dev
```

## Terminal Management

- Use background terminals (`isBackground: true`) for long-running commands
- Kill terminals after use
