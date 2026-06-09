ALPHAMOBILE QUANT OS — DATA INGESTION CONTRACT

PURPOSE

Define mandatory requirements for all market data collectors.

This contract applies to:

- Historical Backfill Collectors
- Incremental Collectors
- Future Collector Versions

No collector may write directly to the database without satisfying this contract.

────────────────────────────

CORE PRINCIPLES

Principle 1

All ingestion runs are auditable.

Principle 2

All ingestion runs are reproducible.

Principle 3

All ingestion runs are deterministic.

Principle 4

All ingestion runs create lineage records.

Principle 5

Failed runs are preserved.

────────────────────────────

REQUIRED INPUTS

asset_id

timeframe_id

data_source_id

collector_version_id

requested_start_time

requested_end_time

────────────────────────────

REQUIRED OUTPUTS

ingestion_run_id

records_processed

status

started_at

completed_at

────────────────────────────

MANDATORY VALIDATIONS

VALIDATION-001

Timestamp Order

open_time < close_time

────────────────────────────

VALIDATION-002

Price Integrity

high >= low

high >= open

high >= close

low <= open

low <= close

────────────────────────────

VALIDATION-003

Positive Prices

open > 0

high > 0

low > 0

close > 0

────────────────────────────

VALIDATION-004

Volume Integrity

volume >= 0

────────────────────────────

VALIDATION-005

Duplicate Detection

No duplicate candles permitted.

────────────────────────────

FAILURE POLICY

If any validation fails:

Entire ingestion run fails.

No candle is written.

Status = FAILED

────────────────────────────

IDEMPOTENCY RULE

The same ingestion request may be executed multiple times.

Database state must remain unchanged.

────────────────────────────

REPLAY RULE

Historical ingestion runs must be replayable.

Results must be reproducible.

────────────────────────────

LINEAGE RULE

Every candle must be traceable to:

Data Source

Collector Version

Ingestion Run

────────────────────────────

CERTIFICATION RULE

Only certified ingestion runs may become validated market data.

────────────────────────────

END OF DOCUMENT
