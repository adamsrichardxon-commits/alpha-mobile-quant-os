ALPHAMOBILE QUANT OS — BACKFILL ENGINE SPECIFICATION

PURPOSE

Define the requirements, behavior, controls, and recovery procedures for historical market data ingestion.

The Backfill Engine is responsible for loading historical market data into the platform.

────────────────────────────

MISSION

Acquire complete historical BTCUSDT market data.

Maintain auditability.

Maintain reproducibility.

Support interruption recovery.

────────────────────────────

ENGINE OBJECTIVES

OBJ-001

Historical Coverage

Acquire maximum historical data available.

────────────────────────────

OBJ-002

Deterministic Results

Repeated executions must produce identical database state.

────────────────────────────

OBJ-003

Recoverability

Interrupted runs must resume from checkpoints.

────────────────────────────

OBJ-004

Auditability

Every run must be traceable.

────────────────────────────

INPUTS

asset_id

timeframe_id

data_source_id

collector_version_id

start_timestamp

end_timestamp

────────────────────────────

OUTPUTS

ingestion_run_id

candles_loaded

status

started_at

completed_at

checkpoint_state

────────────────────────────

COLLECTION STRATEGY

PHASE 1

4h Historical Backfill

Full Available History

────────────────────────────

PHASE 2

1h Historical Backfill

Full Available History

────────────────────────────

PHASE 3

15m Historical Backfill

Full Available History

────────────────────────────

PHASE 4

5m Historical Backfill

Full Available History

────────────────────────────

PHASE 5

1m Historical Backfill

Priority Window

Most Recent 12 Months

Extended Historical Backfill

Optional

Subject To Storage Review

────────────────────────────

BATCH POLICY

Backfill executes in batches.

Each batch:

Request Candles

Validate Candles

Write Candles

Update Checkpoint

────────────────────────────

CHECKPOINT MODEL

Checkpoint Contains

Asset

Timeframe

Last Open Time

Last Successful Batch

Timestamp

────────────────────────────

RECOVERY POLICY

If interruption occurs:

Load Last Checkpoint

Resume Collection

Continue Processing

────────────────────────────

VALIDATION REQUIREMENT

All batches must pass:

Timestamp Validation

OHLC Validation

Volume Validation

Duplicate Detection

Gap Detection

────────────────────────────

FAILURE POLICY

Validation Failure

↓

Batch Rejected

↓

Run Marked FAILED

↓

Database State Preserved

────────────────────────────

RATE LIMIT POLICY

Exchange limits must never be exceeded.

Throttle requests as necessary.

────────────────────────────

IDEMPOTENCY POLICY

Repeated backfills must not create duplicates.

Repeated execution must preserve state.

────────────────────────────

AUDIT REQUIREMENTS

Every run records:

Collector Version

Data Source

Date Range

Records Processed

Status

Execution Timestamp

────────────────────────────

SUCCESS CRITERIA

100% Historical Coverage

0 Duplicate Candles

0 Corrupted Candles

Checkpoint Recovery Verified

Audit Trail Complete

────────────────────────────

END OF DOCUMENT
