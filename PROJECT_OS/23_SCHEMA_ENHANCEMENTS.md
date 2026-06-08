ALPHAMOBILE QUANT OS — SCHEMA ENHANCEMENTS

PURPOSE

Add institutional-grade operational tracking and configuration management.

These tables support:

- reproducibility
- observability
- governance
- deployment safety

────────────────────────────

TABLE: strategy_parameters

Purpose:

Track exact strategy parameters used by each strategy version.

Columns:

id
strategy_version_id
parameter_name
parameter_value
created_at
updated_at

Examples:

risk_per_trade = 1%

minimum_rr = 3

session_filter = london_newyork

────────────────────────────

TABLE: system_config

Purpose:

Centralized system configuration.

Columns:

id
config_key
config_value
description
created_at
updated_at

Examples:

max_daily_loss

max_concurrent_positions

kill_switch_default

────────────────────────────

TABLE: jobs

Purpose:

Track scheduled system jobs.

Columns:

id
job_name
job_type
status
started_at
completed_at
details_json
created_at
updated_at

Examples:

market_data_collector

signal_generator

health_monitor

────────────────────────────

TABLE: data_ingestion_runs

Purpose:

Track market data collection events.

Columns:

id
asset_id
timeframe_id
job_id
records_processed
status
details_json
started_at
completed_at
created_at

Examples:

BTCUSDT 5m

500 candles

SUCCESS

────────────────────────────

RULES

All automated system processes must create job records.

All market data imports must create ingestion records.

Configuration values must never be hardcoded if they influence risk or execution.

END OF DOCUMENT
