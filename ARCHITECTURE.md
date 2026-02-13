# ERC-8004 Agent Creator — Architecture

## System Overview

```
┌─────────────────────────────────────────────────────┐
│                    Frontend (dApp)                    │
│  ┌───────────────────────────────────────────────┐   │
│  │           index.html (Single-File SPA)         │   │
│  │  - Wallet connection (MetaMask, WalletConnect) │   │
│  │  - Agent registration wizard                   │   │
│  │  - Metadata editor (JSON-LD)                   │   │
│  │  - Chain switcher (BSC, Ethereum, etc.)         │   │
│  └───────────────────────────────────────────────┘   │
└──────────────────────┬──────────────────────────────┘
                       │ ethers.js / Web3
                       ▼
┌─────────────────────────────────────────────────────┐
│              Smart Contracts (EVM)                    │
│  ┌─────────────┐ ┌──────────────┐ ┌──────────────┐  │
│  │  Identity    │ │  Reputation  │ │  Validation  │  │
│  │  Registry    │ │  Registry    │ │  Registry    │  │
│  │  (ERC-721)   │ │              │ │              │  │
│  └─────────────┘ └──────────────┘ └──────────────┘  │
└──────────────────────┬──────────────────────────────┘
                       │ Events
                       ▼
┌─────────────────────────────────────────────────────┐
│              Backend Services                        │
│  ┌──────────────┐  ┌───────────┐  ┌──────────────┐  │
│  │ Search       │  │ Agent     │  │ MCP Server   │  │
│  │ Service      │  │ Runtime   │  │              │  │
│  │ (Indexer +   │  │           │  │ (Agent ops   │  │
│  │  Search API) │  │           │  │  via MCP)    │  │
│  └──────────────┘  └───────────┘  └──────────────┘  │
└─────────────────────────────────────────────────────┘
```

## Components

### 1. Frontend — `index.html`

A single-file SPA (~2,400 lines) with zero build dependencies:

- **Tech**: Vanilla HTML/CSS/JS + ethers.js v6 (CDN)
- **Features**: 4-step registration wizard, chain switcher, wallet connect
- **i18n**: 20 locale files loaded dynamically from `locales/`

### 2. Smart Contracts

Three registries implementing ERC-8004:

| Registry | Purpose | Standard |
|----------|---------|----------|
| **IdentityRegistry** | Agent NFT minting + metadata | ERC-721 |
| **ReputationRegistry** | Agent scoring + reviews | Custom |
| **ValidationRegistry** | Capability verification | Custom |

### 3. SDKs

Five language SDKs with identical API surface:

```
Client → connect(rpcUrl, privateKey)
       → register(name, description, imageUrl, services)
       → getAgent(tokenId)
       → setMetadata(tokenId, key, value)
```

### 4. Search Service

TypeScript-based indexer + search API:

- **Indexer**: Listens to `Registered` events, stores agent metadata
- **Search**: Full-text search via Lunr.js (or MeiliSearch)
- **API**: REST endpoints (`/search`, `/agents/:id`, `/stats`)

### 5. MCP Server

Model Context Protocol server exposing agent operations as tools:

- `register_agent` — Register a new agent
- `get_agent` — Fetch agent metadata
- `search_agents` — Search registered agents
- `get_reputation` — Get agent reputation score

## Data Flow

1. User connects wallet → selects chain → fills wizard
2. dApp calls `IdentityRegistry.register()` → mints Agent NFT
3. Contract emits `Registered(tokenId, owner, agentURI)`
4. Search Service indexer picks up event → indexes metadata
5. Agent is discoverable via Search API / MCP Server

## Deployment

| Environment | URL | Chain |
|-------------|-----|-------|
| Production | erc8004.xyz | BSC Mainnet |
| Staging | testnet.erc8004.xyz | BSC Testnet |
| Local | localhost:5173 | Hardhat |

## Security Model

- **No backend keys**: All signing happens in the user's wallet
- **On-chain identity**: Agent ownership = NFT ownership
- **Trustless**: No central authority for registration
- **Metadata**: Stored on-chain or via IPFS (configurable)
