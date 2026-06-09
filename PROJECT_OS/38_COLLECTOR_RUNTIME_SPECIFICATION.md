ALPHAMOBILE QUANT OS — COLLECTOR RUNTIME SPECIFICATION

PURPOSE

Define mandatory runtime behavior for all market data collectors.

Applies to:

- Historical Backfill Collectors
- Incremental Collectors
- Future Collector Versions

────────────────────────────

CORE PRINCIPLES

Reliability

Determinism

Auditability

Recoverability

Idempotency

────────────────────────────

COLLECTOR TYPES

TYPE 1

Historical Backfill Collector

Purpose

Load historical market data.

────────────────────────────

TYPE 2

Incremental Collector

Purpose

Collect newly closed candles.

────────────────────────────

SCHEDULING RULES

Historical Backfill

Manual Execution

Controlled Batches

────────────────────────────

Incremental Collection

Scheduled Execution

Continuous Operation

────────────────────────────

RATE LIMIT POLICY

Exchange limits must never be exceeded.

Collector must track request usage.

Collector must support throttling.

────────────────────────────

RETRY POLICY

Transient Failure

Maximum Retries = 3

Retry Delay

Exponential Backoff

────────────────────────────

FAILURE POLICY

Failure must be recorded.

Failure must generate an ingestion run record.

Partial success is prohibited.

────────────────────────────

CHECKPOINT POLICY

Backfill collectors must maintain progress checkpoints.

Checkpoint data must include:

Asset

Timeframe

Last Successfully Processed Candle

────────────────────────────

IDEMPOTENCY POLICY

Repeated execution must not create duplicate candles.

────────────────────────────

INCREMENTAL POLICY

Only fully closed candles may be ingested.

Forming candles are prohibited.

────────────────────────────

RECOVERY POLICY

Collectors must resume from the last valid checkpoint.

────────────────────────────

AUDIT POLICY

Every collector execution must be traceable.

────────────────────────────

END OF DOCUMENT
