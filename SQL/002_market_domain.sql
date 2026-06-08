-- =====================================================
-- AlphaMobile Quant OS
-- Migration: V0002
-- Market Domain
-- =====================================================

-- =====================================================
-- DATA SOURCES
-- =====================================================

create table if not exists data_sources (

    id uuid primary key default gen_random_uuid(),

    name text not null unique,

    type text not null,

    active boolean not null default true,

    created_at timestamptz not null default now(),

    updated_at timestamptz not null default now()

);

-- =====================================================
-- COLLECTOR VERSIONS
-- =====================================================

create table if not exists collector_versions (

    id uuid primary key default gen_random_uuid(),

    version text not null unique,

    description text,

    active boolean not null default true,

    created_at timestamptz not null default now(),

    updated_at timestamptz not null default now()

);

-- =====================================================
-- DATA INGESTION RUNS
-- =====================================================

create table if not exists data_ingestion_runs (

    id uuid primary key default gen_random_uuid(),

    asset_id uuid not null,

    timeframe_id uuid not null,

    data_source_id uuid not null,

    collector_version_id uuid not null,

    records_processed integer not null default 0,

    status text not null
    check (
        status in (
            'PENDING',
            'RUNNING',
            'SUCCESS',
            'FAILED'
        )
    ),

    details_json jsonb,

    started_at timestamptz not null,

    completed_at timestamptz,

    created_at timestamptz not null default now(),

    constraint fk_ingestion_asset
        foreign key (asset_id)
        references assets(id),

    constraint fk_ingestion_timeframe
        foreign key (timeframe_id)
        references timeframes(id),

    constraint fk_ingestion_source
        foreign key (data_source_id)
        references data_sources(id),

    constraint fk_ingestion_collector
        foreign key (collector_version_id)
        references collector_versions(id)

);

-- =====================================================
-- MARKET CANDLES
-- =====================================================

create table if not exists market_candles (

    id uuid primary key default gen_random_uuid(),

    asset_id uuid not null,

    timeframe_id uuid not null,

    ingestion_run_id uuid not null,

    open_time timestamptz not null,

    close_time timestamptz not null,

    open numeric(20,8) not null,

    high numeric(20,8) not null,

    low numeric(20,8) not null,

    close numeric(20,8) not null,

    volume numeric(20,8) not null,

    quote_volume numeric(20,8),

    trade_count integer,

    created_at timestamptz not null default now(),

    constraint fk_candle_asset
        foreign key (asset_id)
        references assets(id),

    constraint fk_candle_timeframe
        foreign key (timeframe_id)
        references timeframes(id),

    constraint fk_candle_ingestion
        foreign key (ingestion_run_id)
        references data_ingestion_runs(id),

    constraint uq_market_candle
        unique (
            asset_id,
            timeframe_id,
            open_time
        ),

    constraint chk_high_ge_open
        check (high >= open),

    constraint chk_high_ge_close
        check (high >= close),

    constraint chk_low_le_open
        check (low <= open),

    constraint chk_low_le_close
        check (low <= close),

    constraint chk_volume_non_negative
        check (volume >= 0),

    constraint chk_high_ge_low
        check (high >= low),

    constraint chk_open_positive
        check (open > 0),

    constraint chk_high_positive
        check (high > 0),

    constraint chk_low_positive
        check (low > 0),

    constraint chk_close_positive
        check (close > 0),

    constraint chk_close_after_open
        check (close_time > open_time)

);

-- =====================================================
-- CANDLE INTEGRITY CHECKS
-- =====================================================

create table if not exists candle_integrity_checks (

    id uuid primary key default gen_random_uuid(),

    asset_id uuid not null,

    timeframe_id uuid not null,

    check_type text not null,

    status text not null
    check (
        status in (
            'PASS',
            'FAIL'
        )
    ),

    details_json jsonb,

    created_at timestamptz not null default now(),

    constraint fk_integrity_asset
        foreign key (asset_id)
        references assets(id),

    constraint fk_integrity_timeframe
        foreign key (timeframe_id)
        references timeframes(id)

);

-- =====================================================
-- INDEXES
-- =====================================================

create index if not exists
idx_market_candles_asset
on market_candles(asset_id);

create index if not exists
idx_market_candles_timeframe
on market_candles(timeframe_id);

create index if not exists
idx_market_candles_open_time
on market_candles(open_time);

create index if not exists
idx_market_candles_ingestion
on market_candles(ingestion_run_id);

create index if not exists
idx_ingestion_asset
on data_ingestion_runs(asset_id);

create index if not exists
idx_ingestion_timeframe
on data_ingestion_runs(timeframe_id);

create index if not exists
idx_market_candle_lookup
on market_candles
(
    asset_id,
    timeframe_id,
    open_time
);

-- =====================================================
-- SCHEMA VERSION
-- =====================================================

insert into schema_version
(version, description)
values
(
'V0002',
'Market Domain Deployment'
)
on conflict (version) do nothing;

-- =====================================================
-- SEED DATA
-- =====================================================

insert into data_sources
(name, type)
values
(
'BINANCE_SPOT_TESTNET',
'EXCHANGE'
)
on conflict (name) do nothing;

insert into collector_versions
(version, description)
values
(
'collector_v1',
'Initial market data collector'
)
on conflict (version) do nothing;
