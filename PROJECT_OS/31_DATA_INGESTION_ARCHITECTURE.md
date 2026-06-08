ALPHAMOBILE QUANT OS — DATA INGESTION ARCHITECTURE

PURPOSE

Provide reliable, auditable and reproducible market data ingestion.

────────────────────────────

INGESTION PRINCIPLES

1. Historical data is permanent.

2. Historical candles are immutable.

3. All research uses stored data only.

4. Live exchange queries during backtests are prohibited.

5. Every candle must have lineage.

────────────────────────────

DATA FLOW

Binance Spot API
        ↓
Collector
        ↓
Validation
        ↓
Ingestion Run
        ↓
Market Candles
        ↓
Integrity Checks
        ↓
Research Layer

────────────────────────────

DATA SOURCES

Research Source

Binance Spot

Execution Source

Binance Spot Testnet

────────────────────────────

COLLECTOR MODES

Mode 1

Historical Backfill

Purpose

Load historical candles into database.

Mode 2

Incremental Collection

Purpose

Append newly closed candles.

────────────────────────────

FAILURE RULES

Rule 1

Failed ingestion runs must be recorded.

Rule 2

Partial loads are prohibited.

Rule 3

Duplicate candles are prohibited.

Rule 4

Integrity checks execute after ingestion.

────────────────────────────

IMMUTABILITY

Historical candles may never be updated.

Historical candles may never be deleted.

────────────────────────────

END OF DOCUMENT
