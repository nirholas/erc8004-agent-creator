# ERC-8004 Agent Creator — AI Agent Guidelines

> On-chain AI agent identity registration via the ERC-8004 standard.

## Project Overview

ERC-8004 Agent Creator is a single-page dApp for creating, registering, and managing AI agents on EVM-compatible blockchains using the ERC-8004 standard (Agent Identity NFTs).

## Project Structure

```
erc8004-agent-creator/
├── index.html              # Main dApp (single-file SPA)
├── sdks/                   # Multi-language SDKs
│   ├── python/             # Python SDK
│   ├── go/                 # Go SDK
│   ├── rust/               # Rust SDK
│   ├── java/               # Java/Kotlin SDK
│   └── swift/              # Swift SDK
├── search-service/         # Agent search & indexing service
├── agent-runtime/          # Agent execution runtime
├── cli/                    # Command-line interface
├── vscode-extension/       # VS Code extension
├── mcp-server/             # MCP server for agent ops
├── locales/                # 20 language translations
├── docs/                   # Documentation
│   ├── getting-started.md
│   ├── api.md
│   └── ...
├── .github/workflows/      # CI/CD pipelines
└── public/                 # Static assets
```

## Commands

```bash
# SDKs
cd sdks/python && pip install -e .    # Install Python SDK
cd sdks/go && go test ./...           # Test Go SDK
cd sdks/rust && cargo test            # Test Rust SDK
cd sdks/java && ./gradlew test        # Test Java SDK
cd sdks/swift && swift test           # Test Swift SDK

# Search Service
cd search-service && npm install && npm run dev

# CLI
cd cli && npm install && npm link
```

## Smart Contracts

| Chain | Network | Contract | Address |
|-------|---------|----------|---------|
| BSC | Testnet | IdentityRegistry | `0x8004A818BFB912233c491871b3d84c89A494BD9e` |
| BSC | Testnet | ReputationRegistry | `0x8004B663056A597Dffe9eCcC1965A193B7388713` |
| BSC | Testnet | ValidationRegistry | `0x8004Cb1BF31DAf7788923b405b754f57acEB4272` |
| BSC | Mainnet | IdentityRegistry | `0x8004A169FB4a3325136EB29fA0ceB6D2e539a432` |
| BSC | Mainnet | ReputationRegistry | `0x8004BAa17C55a88189AE136b182e5fdA19dE9b63` |

## Key Design Decisions

- Single HTML file for the dApp — zero build step, maximum portability
- ERC-721-based agent identity — each agent is an NFT
- Multi-chain by design — BSC, Ethereum, and any EVM chain
- SDKs mirror the contract interface exactly
- All locale files use the same key structure for consistency

## Contributing

- Follow existing patterns when adding new locales or SDKs
- Keep the single-file dApp architecture
- Test contract interactions on BSC Testnet before mainnet
