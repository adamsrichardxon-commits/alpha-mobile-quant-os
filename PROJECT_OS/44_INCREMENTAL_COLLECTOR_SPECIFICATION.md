ALPHAMOBILE QUANT OS — INCREMENTAL COLLECTOR SPECIFICATION

PURPOSE

Define the behavior of the live market data collection system.

The Incremental Collector is responsible for continuously ingesting newly closed candles after historical backfill is complete.

────────────────────────────

MISSION

Maintain a continuously updated market dataset.

Ensure data completeness.

Ensure zero duplicate candles.

Ensure zero missing candles.

────────────────────────────

OBJECTIVES

OBJ-001

Collect newly closed candles.

────────────────────────────

OBJ-002

Detect collection gaps.

────────────────────────────

OBJ-003

Recover automatically from interruptions.

────────────────────────────

OBJ-004

Maintain auditability.

────────────────────────────

COLLECTION PRINCIPLE

Only fully closed candles may be collected.

Forming candles are prohibited.

────────────────────────────

SUPPORTED TIMEFRAMES

1m

5m

15m

1h

4h

────────────────────────────

COLLECTION CYCLE

STEP 1

Determine current exchange time.

↓

STEP 2

Determine latest closed candle.

↓

STEP 3

Request missing candles.

↓

STEP 4

Validate dataset.

↓

STEP 5

Persist validated candles.

↓

STEP 6

Update checkpoint.

────────────────────────────

GAP DETECTION

The collector must identify:

Missing Candle Sequences

Unexpected Timestamp Gaps

Checkpoint Drift

────────────────────────────

RECOVERY POLICY

If a gap is detected:

Determine Missing Range

Execute Recovery Collection

Validate Results

Insert Missing Candles

────────────────────────────

FAILURE POLICY

Collection Failure

↓

Record Failed Ingestion Run

↓

Preserve Existing Data

↓

Retry According To Runtime Policy

────────────────────────────

RETRY POLICY

Maximum Retries = 3

Backoff Strategy

Exponential

────────────────────────────

VALIDATION REQUIREMENT

Every collection cycle must pass:

Timestamp Validation

OHLC Validation

Volume Validation

Duplicate Detection

Gap Detection

────────────────────────────

IDEMPOTENCY REQUIREMENT

Repeated execution must not create duplicates.

────────────────────────────

AUDIT REQUIREMENTS

Every execution records:

Collector Version

Execution Timestamp

Records Processed

Records Inserted

Status

────────────────────────────

COLLECTION FREQUENCY POLICY

1m Collector

Execute Every 60 Seconds

────────────────────────────

5m Collector

Execute Every 5 Minutes

────────────────────────────

15m Collector

Execute Every 15 Minutes

────────────────────────────

1h Collector

Execute Every 60 Minutes

────────────────────────────

4h Collector

Execute Every 240 Minutes

────────────────────────────

SUCCESS CRITERIA

Continuous Collection Operational

Gap Recovery Verified

Duplicate Prevention Verified

Audit Trail Complete

────────────────────────────

END OF DOCUMENT
