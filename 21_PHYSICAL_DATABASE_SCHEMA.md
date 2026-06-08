ALPHAMOBILE QUANT OS — PHYSICAL DATABASE SCHEMA

PURPOSE

Define the production-grade physical database design.

This document specifies the tables, relationships, constraints, ownership boundaries, immutability rules, and audit requirements for AlphaMobile Quant OS.

This schema is designed for:

- Mobile-first operation
- Free-tier infrastructure
- Institutional-grade research
- Full auditability
- Long-term extensibility

────────────────────────────

DESIGN PHILOSOPHY

The database is the single source of truth.

Applications are temporary.

Code can be replaced.

Services can be replaced.

The database is permanent.

Therefore:

Data integrity takes priority over convenience.

Auditability takes priority over performance.

Reproducibility takes priority over speed.

────────────────────────────

DATABASE DOMAINS

The system is divided into nine domains.

1. Reference Domain
2. Market Domain
3. Research Domain
4. Signal Domain
5. Risk Domain
6. Execution Domain
7. Audit Domain
8. Control Domain
9. Monitoring Domain

────────────────────────────

REFERENCE DOMAIN

Purpose:

Store system-wide reference data.

TABLE: assets

Purpose:

Tradable instruments.

Columns:

id
symbol
base_asset
quote_asset
active
created_at

Example:

BTCUSDT

────────────────────────────

TABLE: timeframes

Purpose:

Supported timeframes.

Columns:

id
name
minutes
active
created_at

Examples:

1m
5m
15m
1h
4h
1d

────────────────────────────

TABLE: strategy_versions

Purpose:

Version control for strategy logic.

Columns:

id
version
description
status
created_at

Examples:

v1.0
v1.1
v2.0

Rule:

Signals must reference strategy version.

────────────────────────────

MARKET DOMAIN

Purpose:

Store market information.

TABLE: market_candles

Purpose:

Historical OHLCV data.

Columns:

id
asset_id
timeframe_id
open_time
close_time
open
high
low
close
volume
source
created_at

Constraints:

(asset_id,timeframe_id,open_time)
must be unique.

Rules:

Historical candles are immutable.

No updates allowed.

Corrections require new records and audit entries.

────────────────────────────

TABLE: candle_integrity_checks

Purpose:

Track data quality.

Columns:

id
asset_id
timeframe_id
check_type
result
details
created_at

Examples:

missing_candle_check
duplicate_check
gap_check

────────────────────────────

RESEARCH DOMAIN

Purpose:

Preserve research history.

TABLE: hypotheses

Columns:

id
hypothesis_code
title
description
status
created_at

Statuses:

REGISTERED
RESEARCHING
VALIDATED
REJECTED
ARCHIVED

────────────────────────────

TABLE: experiments

Purpose:

Research experiments.

Columns:

id
hypothesis_id
experiment_name
dataset
sample_size
methodology
created_at

────────────────────────────

TABLE: research_results

Purpose:

Permanent research outcomes.

Columns:

id
experiment_id
result_summary
metrics_json
conclusion
created_at

Rule:

Append only.

Never edit.

────────────────────────────

SIGNAL DOMAIN

Purpose:

Store every generated signal.

TABLE: signals

Columns:

id
strategy_version_id
asset_id
timeframe_id
signal_type
direction
signal_strength
signal_payload_json
generated_at

Rule:

Every generated signal must be stored.

No exceptions.

────────────────────────────

TABLE: signal_outcomes

Purpose:

Track signal performance.

Columns:

id
signal_id
outcome
r_multiple
profit_loss
resolved_at

Examples:

WIN
LOSS
BREAKEVEN
EXPIRED

────────────────────────────

RISK DOMAIN

Purpose:

Store risk decisions.

TABLE: risk_decisions

Columns:

id
signal_id
approved
rejection_reason
risk_percentage
risk_model_version
created_at

Rule:

Every signal must receive a risk decision.

────────────────────────────

EXECUTION DOMAIN

Purpose:

Store execution records.

TABLE: executions

Columns:

id
signal_id
risk_decision_id
exchange_order_id
execution_status
entry_price
stop_loss
take_profit
quantity
executed_at

Statuses:

PENDING
PLACED
FILLED
CANCELLED
FAILED

Rule:

Execution records are immutable.

────────────────────────────

AUDIT DOMAIN

Purpose:

Forensic traceability.

TABLE: audit_events

Columns:

id
event_type
event_source
entity_type
entity_id
payload_json
created_at

Examples:

SIGNAL_GENERATED

RISK_APPROVED

ORDER_PLACED

ORDER_FILLED

KILL_SWITCH_TRIGGERED

Rule:

Append only.

Never delete.

Never update.

────────────────────────────

CONTROL DOMAIN

Purpose:

System governance.

TABLE: control_events

Columns:

id
event_name
event_payload_json
triggered_by
created_at

Examples:

KILL_SWITCH_ON

KILL_SWITCH_OFF

PAUSE_EXECUTION

RESUME_EXECUTION

ENTER_MAINTENANCE

EXIT_MAINTENANCE

Rule:

Control is event-driven.

No boolean kill-switch architecture.

────────────────────────────

MONITORING DOMAIN

Purpose:

Operational visibility.

TABLE: system_health

Columns:

id
component_name
health_status
details
recorded_at

Examples:

BINANCE_API

SUPABASE

TELEGRAM

GITHUB

Statuses:

HEALTHY

DEGRADED

FAILED

────────────────────────────

RELATIONSHIPS

assets

1 → many

market_candles

────────────────────────────

timeframes

1 → many

market_candles

────────────────────────────

hypotheses

1 → many

experiments

────────────────────────────

experiments

1 → many

research_results

────────────────────────────

signals

1 → 1

risk_decisions

────────────────────────────

risk_decisions

1 → many

executions

────────────────────────────

signals

1 → many

audit_events

────────────────────────────

IMMUTABILITY POLICY

Never Update:

market_candles
research_results
signals
executions
audit_events

Append-only architecture.

────────────────────────────

DATA RETENTION POLICY

Market Data:

Permanent

Research Data:

Permanent

Signals:

Permanent

Executions:

Permanent

Audit Events:

Permanent

Control Events:

Permanent

────────────────────────────

INSTITUTIONAL RULES

Rule 1

No critical action may occur without an audit record.

Rule 2

Every signal must be traceable to:

- strategy version
- risk decision
- execution result

Rule 3

Every research conclusion must be traceable to:

- hypothesis
- experiment
- dataset

Rule 4

If a record influences trading decisions:

it must exist in the database.

Rule 5

If a record cannot be reproduced:

it is invalid.

END OF DOCUMENT
