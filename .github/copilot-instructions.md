# ERC-8004 Agent Creator

> On-chain AI agent identity registration dApp.

## Structure

- `index.html` — Single-file dApp (HTML/CSS/JS)
- `sdks/` — Python, Go, Rust, Java, Swift SDKs
- `search-service/` — Agent search & indexing
- `locales/` — 20 language translations
- `docs/` — Documentation

## Contracts

- BSC Testnet Identity: `0x8004A818BFB912233c491871b3d84c89A494BD9e`
- BSC Mainnet Identity: `0x8004A169FB4a3325136EB29fA0ceB6D2e539a432`

## Commands

```bash
cd sdks/python && pip install -e .
cd sdks/go && go test ./...
cd sdks/rust && cargo test
cd search-service && npm run dev
```
