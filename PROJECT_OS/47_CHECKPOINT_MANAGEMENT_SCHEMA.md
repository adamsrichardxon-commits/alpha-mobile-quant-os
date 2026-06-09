ALPHAMOBILE QUANT OS — CHECKPOINT MANAGEMENT SCHEMA

PURPOSE

Provide resumable collection operations.

Allow interrupted collectors to continue safely.

────────────────────────────

TABLE

collector_checkpoints

────────────────────────────

PRIMARY KEY

id UUID

────────────────────────────

FIELDS

id

UUID

PRIMARY KEY

────────────────────────────

asset_id

UUID

NOT NULL

REFERENCES assets(id)

────────────────────────────

timeframe_id

UUID

NOT NULL

REFERENCES timeframes(id)

────────────────────────────

collector_version_id

UUID

NOT NULL

REFERENCES collector_versions(id)

────────────────────────────

last_open_time

TIMESTAMPTZ

NOT NULL

────────────────────────────

last_successful_batch

BIGINT

NOT NULL

DEFAULT 0

────────────────────────────

checkpoint_status

TEXT

NOT NULL

Allowed Values

ACTIVE

COMPLETE

FAILED

────────────────────────────

updated_at

TIMESTAMPTZ

NOT NULL

DEFAULT NOW()

────────────────────────────

UNIQUE CONSTRAINT

asset_id

timeframe_id

collector_version_id

────────────────────────────

RECOVERY RULE

Collectors resume from checkpoint.

────────────────────────────

END OF DOCUMENT
