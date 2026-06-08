ALPHAMOBILE QUANT OS — DATABASE SCHEMA

PURPOSE

Define the authoritative database structure.

Supabase PostgreSQL is the primary datastore.

────────────────────────────

DESIGN PRINCIPLES

1. Single Source of Truth

Supabase stores authoritative data.

2. Immutable History

Historical records are never edited.

3. Audit First

All important actions are logged.

4. Research Preservation

Research results must remain reproducible.

────────────────────────────

TABLE GROUPS

1. Market Data

2. Research

3. Signals

4. Risk

5. Execution

6. Audit

7. Control

────────────────────────────

MARKET DATA TABLES

market_candles

Purpose:

Store OHLCV data.

Fields:

- id
- symbol
- timeframe
- timestamp
- open
- high
- low
- close
- volume

────────────────────────────

RESEARCH TABLES

hypotheses

Purpose:

Store research hypotheses.

Fields:

- id
- hypothesis_id
- title
- status
- created_at

────────────────────────────

research_results

Purpose:

Store research outcomes.

Fields:

- id
- hypothesis_id
- dataset
- sample_size
- result
- conclusion
- created_at

────────────────────────────

SIGNAL TABLES

signals

Purpose:

Store generated signals.

Fields:

- id
- signal_type
- direction
- confidence
- timestamp

Rule:

Signals are immutable.

────────────────────────────

RISK TABLES

risk_decisions

Purpose:

Store trade approvals.

Fields:

- id
- signal_id
- approved
- reason
- timestamp

────────────────────────────

EXECUTION TABLES

executions

Purpose:

Store execution history.

Fields:

- id
- signal_id
- order_id
- execution_status
- timestamp

────────────────────────────

AUDIT TABLES

audit_events

Purpose:

Store system activity.

Fields:

- id
- event_type
- event_source
- event_data
- timestamp

Rule:

Never delete audit events.

────────────────────────────

CONTROL TABLES

system_controls

Purpose:

Store global controls.

Fields:

- id
- control_name
- control_value
- timestamp

Examples:

- kill_switch
- maintenance_mode

────────────────────────────

IMMUTABLE TABLES

Never update:

- signals
- executions
- audit_events
- research_results

Append only.

────────────────────────────

MUTABLE TABLES

Allowed updates:

- hypotheses
- system_controls

────────────────────────────

MASTER RULE

If information is important enough to influence trading decisions:

It must be stored in the database.

END OF DOCUMENT
