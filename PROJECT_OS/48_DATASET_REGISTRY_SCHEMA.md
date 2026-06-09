ALPHAMOBILE QUANT OS — DATASET REGISTRY SCHEMA

PURPOSE

Track certified research datasets.

Enable reproducible research.

────────────────────────────

TABLE

research_datasets

────────────────────────────

PRIMARY KEY

id UUID

────────────────────────────

FIELDS

id

UUID

PRIMARY KEY

────────────────────────────

dataset_version

TEXT

NOT NULL

UNIQUE

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

start_time

TIMESTAMPTZ

NOT NULL

────────────────────────────

end_time

TIMESTAMPTZ

NOT NULL

────────────────────────────

record_count

BIGINT

NOT NULL

────────────────────────────

certification_level

TEXT

NOT NULL

Allowed Values

GOLD

SILVER

BRONZE

────────────────────────────

validation_timestamp

TIMESTAMPTZ

NOT NULL

────────────────────────────

created_at

TIMESTAMPTZ

NOT NULL

DEFAULT NOW()

────────────────────────────

IMMUTABILITY RULE

Published datasets may not be modified.

────────────────────────────

RESEARCH RULE

All backtests must reference dataset_version.

────────────────────────────

END OF DOCUMENT
