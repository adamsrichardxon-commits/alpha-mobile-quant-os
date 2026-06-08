ALPHAMOBILE QUANT OS — MARKET DOMAIN SPECIFICATION

PURPOSE

Store permanent market data.

Support:

- research
- backtesting
- paper trading
- execution
- auditability

────────────────────────────

TABLES

data_sources

collector_versions

data_ingestion_runs

market_candles

candle_integrity_checks

────────────────────────────

DATA SOURCES

Purpose

Track origin of market data.

Example

Binance Spot Testnet

Columns

id

name

type

active

created_at

updated_at

────────────────────────────

COLLECTOR VERSIONS

Purpose

Track versions of data collection logic.

Columns

id

version

description

active

created_at

updated_at

────────────────────────────

DATA INGESTION RUNS

Purpose

Track every collection event.

Columns

id

asset_id

timeframe_id

data_source_id

collector_version_id

records_processed

status

started_at

completed_at

details_json

created_at

────────────────────────────

MARKET CANDLES

Purpose

Permanent immutable candle storage.

Columns

id

asset_id

timeframe_id

ingestion_run_id

open_time

close_time

open

high

low

close

volume

quote_volume

trade_count

created_at

────────────────────────────

Uniqueness Rule

asset_id

timeframe_id

open_time

must be unique.

────────────────────────────

CANDLE INTEGRITY CHECKS

Purpose

Detect:

missing candles

duplicates

time gaps

data corruption

Columns

id

asset_id

timeframe_id

check_type

status

details_json

created_at

────────────────────────────

IMMUTABILITY RULE

Historical candles may never be updated.

Historical candles may never be deleted.

────────────────────────────

RESEARCH RULE

All signals must originate from stored candles.

Direct exchange querying during backtests is prohibited.

────────────────────────────

END OF DOCUMENT
