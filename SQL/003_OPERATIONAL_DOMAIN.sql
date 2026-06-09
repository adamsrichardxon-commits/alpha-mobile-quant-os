BEGIN;

-- ============================================================
-- V0003
-- OPERATIONAL DOMAIN DEPLOYMENT
-- ============================================================

-- ============================================================
-- UPGRADE EXISTING INGESTION TABLE
-- ============================================================

ALTER TABLE data_ingestion_runs
ADD COLUMN IF NOT EXISTS run_type TEXT;

ALTER TABLE data_ingestion_runs
ADD COLUMN IF NOT EXISTS duration_seconds INTEGER;

ALTER TABLE data_ingestion_runs
ADD COLUMN IF NOT EXISTS exchange_request_id TEXT;

ALTER TABLE data_ingestion_runs
ADD COLUMN IF NOT EXISTS collector_instance_id UUID;

ALTER TABLE data_ingestion_runs
ADD COLUMN IF NOT EXISTS records_inserted INTEGER NOT NULL DEFAULT 0;

ALTER TABLE data_ingestion_runs
ADD COLUMN IF NOT EXISTS failure_reason TEXT;

ALTER TABLE data_ingestion_runs
ADD CONSTRAINT chk_ingestion_run_type
CHECK (
    run_type IS NULL
    OR run_type IN ('BACKFILL','INCREMENTAL')
);

ALTER TABLE data_ingestion_runs
ADD CONSTRAINT chk_ingestion_records_inserted
CHECK (records_inserted >= 0);

ALTER TABLE data_ingestion_runs
ADD CONSTRAINT chk_ingestion_duration
CHECK (
    duration_seconds IS NULL
    OR duration_seconds >= 0
);

CREATE INDEX IF NOT EXISTS idx_ingestion_runs_status
ON data_ingestion_runs(status);

CREATE INDEX IF NOT EXISTS idx_ingestion_runs_started_at
ON data_ingestion_runs(started_at);

CREATE INDEX IF NOT EXISTS idx_ingestion_runs_collector_instance
ON data_ingestion_runs(collector_instance_id);

-- ============================================================
-- COLLECTOR CHECKPOINTS
-- ============================================================

CREATE TABLE IF NOT EXISTS collector_checkpoints (

    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),

    asset_id UUID NOT NULL
        REFERENCES assets(id)
        ON DELETE RESTRICT,

    timeframe_id UUID NOT NULL
        REFERENCES timeframes(id)
        ON DELETE RESTRICT,

    collector_version_id UUID NOT NULL
        REFERENCES collector_versions(id)
        ON DELETE RESTRICT,

    collector_type TEXT NOT NULL,

    last_open_time TIMESTAMPTZ NOT NULL,

    last_successful_batch BIGINT NOT NULL DEFAULT 0,

    last_ingestion_run_id UUID NULL
        REFERENCES data_ingestion_runs(id)
        ON DELETE RESTRICT,

    checkpoint_status TEXT NOT NULL,

    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),

    CONSTRAINT chk_checkpoint_type
    CHECK (
        collector_type IN (
            'BACKFILL',
            'INCREMENTAL'
        )
    ),

    CONSTRAINT chk_checkpoint_status
    CHECK (
        checkpoint_status IN (
            'ACTIVE',
            'COMPLETE',
            'FAILED'
        )
    ),

    CONSTRAINT uq_checkpoint
    UNIQUE (
        asset_id,
        timeframe_id,
        collector_version_id,
        collector_type
    )
);

CREATE INDEX IF NOT EXISTS idx_checkpoint_lookup
ON collector_checkpoints(
    asset_id,
    timeframe_id
);

CREATE INDEX IF NOT EXISTS idx_checkpoint_status
ON collector_checkpoints(
    checkpoint_status
);

-- ============================================================
-- RESEARCH DATASETS
-- ============================================================

CREATE TABLE IF NOT EXISTS research_datasets (

    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),

    dataset_version TEXT NOT NULL UNIQUE,

    dataset_hash TEXT NOT NULL,

    asset_id UUID NOT NULL
        REFERENCES assets(id)
        ON DELETE RESTRICT,

    timeframe_id UUID NOT NULL
        REFERENCES timeframes(id)
        ON DELETE RESTRICT,

    collector_version_id UUID NOT NULL
        REFERENCES collector_versions(id)
        ON DELETE RESTRICT,

    start_time TIMESTAMPTZ NOT NULL,

    end_time TIMESTAMPTZ NOT NULL,

    record_count BIGINT NOT NULL,

    certification_level TEXT NOT NULL,

    published BOOLEAN NOT NULL DEFAULT FALSE,

    validation_timestamp TIMESTAMPTZ NOT NULL,

    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),

    CONSTRAINT chk_dataset_record_count
    CHECK (record_count >= 0),

    CONSTRAINT chk_dataset_dates
    CHECK (end_time > start_time),

    CONSTRAINT chk_dataset_certification
    CHECK (
        certification_level IN (
            'GOLD',
            'SILVER',
            'BRONZE'
        )
    )
);

CREATE INDEX IF NOT EXISTS idx_dataset_lookup
ON research_datasets(
    asset_id,
    timeframe_id
);

CREATE INDEX IF NOT EXISTS idx_dataset_version
ON research_datasets(
    dataset_version
);

CREATE INDEX IF NOT EXISTS idx_dataset_published
ON research_datasets(
    published
);

-- ============================================================
-- SCHEMA VERSION REGISTRATION
-- ============================================================

INSERT INTO schema_version (
    id,
    version,
    description,
    applied_at
)
VALUES (
    gen_random_uuid(),
    'V0003',
    'Operational Domain Deployment',
    NOW()
);

COMMIT;
