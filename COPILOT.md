# ERC-8004 Agent Creator

> AI agent identity on-chain via ERC-8004 (ERC-721 NFTs).

## Project

Single HTML dApp + 5 SDKs (Python/Go/Rust/Java/Swift) + search service + CLI + MCP server.

## Key Files

- `index.html` — Full dApp (~2400 lines)
- `sdks/` — Multi-language SDKs
- `search-service/` — Agent indexer & search API
- `locales/` — 20 i18n JSON files

## Contracts (BSC)

| | Testnet | Mainnet |
|---|---|---|
| Identity | `0x8004A818BFB912233c491871b3d84c89A494BD9e` | `0x8004A169FB4a3325136EB29fA0ceB6D2e539a432` |
| Reputation | `0x8004B663056A597Dffe9eCcC1965A193B7388713` | `0x8004BAa17C55a88189AE136b182e5fdA19dE9b63` |
| Validation | `0x8004Cb1BF31DAf7788923b405b754f57acEB4272` | — |

## Commands

```bash
cd sdks/python && pip install -e .
cd sdks/go && go test ./...
cd search-service && npm run dev
```
