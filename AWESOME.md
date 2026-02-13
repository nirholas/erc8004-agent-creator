# Awesome ERC-8004 [![Awesome](https://awesome.re/badge.svg)](https://awesome.re)

> A curated list of ERC-8004 Agent Identity Standard resources, tools, and ecosystem projects.

## Contents

- [Official Resources](#official-resources)
- [SDKs & Libraries](#sdks--libraries)
- [Tools](#tools)
- [MCP Servers](#mcp-servers)
- [Agents](#agents)
- [Documentation](#documentation)
- [Community](#community)
- [Related Standards](#related-standards)

## Official Resources

- [ERC-8004 Standard](https://eips.ethereum.org/EIPS/eip-8004) — EIP specification for Agent Identity
- [Agent Creator dApp](https://erc8004.xyz) — Register agents on-chain via web UI
- [GitHub Repository](https://github.com/nirholas/erc8004-agent-creator) — Source code and SDKs

## SDKs & Libraries

| Language | Package | Status |
|----------|---------|--------|
| Python | [`erc8004`](./sdks/python/) | ✅ Stable |
| Go | [`erc8004-go`](./sdks/go/) | ✅ Stable |
| Rust | [`erc8004-rs`](./sdks/rust/) | ✅ Stable |
| Java/Kotlin | [`erc8004-java`](./sdks/java/) | ✅ Stable |
| Swift | [`erc8004-swift`](./sdks/swift/) | ✅ Stable |
| TypeScript | [`@erc8004/sdk`](./sdks/typescript/) | 🚧 Planned |

## Tools

- [ERC-8004 CLI](./cli/) — Command-line tool for agent registration
- [VS Code Extension](./vscode-extension/) — Visual Studio Code integration
- [Agent Search Service](./search-service/) — Full-text search across registered agents
- [Dust Sweeper](./defi-tools/sweep/) — Sweep small token balances

## MCP Servers

- [ERC-8004 MCP Server](./mcp-server/) — Model Context Protocol server for agent operations
- [BNBChain MCP](https://github.com/nicholasgasior/bnb-chain-toolkit/tree/main/mcp-servers/bnbchain-mcp) — BNB Chain + EVM MCP server

## Agents

Agents registered via ERC-8004 on supported chains:

- **BSC Mainnet** — `0x8004A169FB4a3325136EB29fA0ceB6D2e539a432`
- **BSC Testnet** — `0x8004A818BFB912233c491871b3d84c89A494BD9e`

## Documentation

- [Getting Started](./docs/getting-started.md)
- [Architecture](./ARCHITECTURE.md)
- [API Reference](./docs/api.md)
- [Contract ABIs](./docs/abis.md)
- [Deployment Guide](./docs/deployment.md)
- [FAQ](./docs/faq.md)

## Community

- [GitHub Discussions](https://github.com/nirholas/erc8004-agent-creator/discussions)
- [BNB Chain Discord](https://discord.gg/bnbchain)
- [Ethereum Magicians - ERC-8004](https://ethereum-magicians.org/t/erc-8004-agent-identity/17213)

## Related Standards

- [ERC-721](https://eips.ethereum.org/EIPS/eip-721) — Non-Fungible Token Standard
- [ERC-725](https://eips.ethereum.org/EIPS/eip-725) — General Key-Value Store and Execution
- [ERC-735](https://eips.ethereum.org/EIPS/eip-735) — Claim Holder
- [W3AG](https://www.w3.org/TR/wai-aria/) — Web3 Agent Guidelines
- [A2A Protocol](https://github.com/google/a2a) — Agent-to-Agent Protocol
- [MCP](https://modelcontextprotocol.io/) — Model Context Protocol

---

## Contributing

Contributions welcome! Read the [contributing guidelines](./CONTRIBUTING.md) first.

## License

[MIT](./LICENSE)
