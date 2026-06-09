ALPHAMOBILE QUANT OS — INGESTION TRACKING SCHEMA

PURPOSE

Define database structures required to track all ingestion activity.

Every collector execution must create an ingestion run record.

────────────────────────────

TABLE

ingestion_runs

────────────────────────────

PRIMARY KEY

id UUID

────────────────────────────

FIELDS

id

UUID

NOT NULL

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

data_source_id

UUID

NOT NULL

REFERENCES data_sources(id)

────────────────────────────

collector_version_id

UUID

NOT NULL

REFERENCES collector_versions(id)

────────────────────────────

run_type

TEXT

NOT NULL

Allowed Values

BACKFILL

INCREMENTAL

────────────────────────────

requested_start_time

TIMESTAMPTZ

NOT NULL

────────────────────────────

requested_end_time

TIMESTAMPTZ

NOT NULL

────────────────────────────

records_requested

INTEGER

NOT NULL

DEFAULT 0

────────────────────────────

records_inserted

INTEGER

NOT NULL

DEFAULT 0

────────────────────────────

status

TEXT

NOT NULL

Allowed Values

RUNNING

SUCCESS

FAILED

────────────────────────────

failure_reason

TEXT

NULL

────────────────────────────

started_at

TIMESTAMPTZ

NOT NULL

────────────────────────────

completed_at

TIMESTAMPTZ

NULL

────────────────────────────

created_at

TIMESTAMPTZ

NOT NULL

DEFAULT NOW()

────────────────────────────

INDEXES

asset_id

timeframe_id

status

started_at

────────────────────────────

AUDIT RULE

Ingestion runs may never be deleted.

────────────────────────────

END OF DOCUMENT
