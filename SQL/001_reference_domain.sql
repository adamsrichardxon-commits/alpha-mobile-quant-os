-- =====================================================
-- AlphaMobile Quant OS
-- Migration: V0001
-- Reference Domain
-- =====================================================

create extension if not exists pgcrypto;

-- =====================================================
-- SCHEMA VERSION
-- =====================================================

create table if not exists schema_version (

    id uuid primary key default gen_random_uuid(),

    version text not null unique,

    description text not null,

    applied_at timestamptz not null default now()

);

-- =====================================================
-- ASSETS
-- =====================================================

create table if not exists assets (

    id uuid primary key default gen_random_uuid(),

    symbol text not null unique,

    base_asset text not null,

    quote_asset text not null,

    active boolean not null default true,

    created_at timestamptz not null default now(),

    updated_at timestamptz not null default now()

);

-- =====================================================
-- TIMEFRAMES
-- =====================================================

create table if not exists timeframes (

    id uuid primary key default gen_random_uuid(),

    name text not null unique,

    minutes integer not null,

    active boolean not null default true,

    created_at timestamptz not null default now(),

    updated_at timestamptz not null default now()

);

-- =====================================================
-- STRATEGY VERSIONS
-- =====================================================

create table if not exists strategy_versions (

    id uuid primary key default gen_random_uuid(),

    version text not null unique,

    description text,

    status text not null,

    created_at timestamptz not null default now(),

    updated_at timestamptz not null default now()

);

-- =====================================================
-- STRATEGY PARAMETERS
-- =====================================================

create table if not exists strategy_parameters (

    id uuid primary key default gen_random_uuid(),

    strategy_version_id uuid not null,

    parameter_name text not null,

    parameter_value text not null,

    created_at timestamptz not null default now(),

    updated_at timestamptz not null default now(),

    constraint fk_strategy_parameters_strategy_version

    foreign key (strategy_version_id)

    references strategy_versions(id)

);

-- =====================================================
-- INDEXES
-- =====================================================

create index if not exists

idx_strategy_parameters_strategy_version

on strategy_parameters(strategy_version_id);

-- =====================================================
-- INITIAL DATA
-- =====================================================

insert into schema_version
(version, description)
values
(
'V0001',
'Reference Domain Deployment'
)
on conflict (version) do nothing;

insert into assets
(symbol, base_asset, quote_asset)
values
(
'BTCUSDT',
'BTC',
'USDT'
)
on conflict (symbol) do nothing;

insert into timeframes
(name, minutes)
values
('1m',1),
('5m',5),
('15m',15),
('1h',60),
('4h',240)
on conflict (name) do nothing;

insert into strategy_versions
(version, description, status)
values
(
'v1.0',
'Initial Research Strategy',
'ACTIVE'
)
on conflict (version) do nothing;
