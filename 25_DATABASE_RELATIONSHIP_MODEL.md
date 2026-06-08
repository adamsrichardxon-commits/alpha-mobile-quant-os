ALPHAMOBILE QUANT OS — DATABASE RELATIONSHIP MODEL

PURPOSE

Define all database relationships.

This document serves as the authoritative Entity Relationship Model (ERM) for AlphaMobile Quant OS.

No SQL implementation may violate this model.

────────────────────────────

DESIGN PRINCIPLES

1. SINGLE SOURCE OF TRUTH

Every piece of authoritative information exists in one location.

Duplication is prohibited unless explicitly justified.

────────────────────────────

2. TRACEABILITY

Every signal must be traceable.

Every trade must be traceable.

Every research conclusion must be traceable.

Every system action must be traceable.

────────────────────────────

3. AUDITABILITY

All critical actions must create an audit trail.

────────────────────────────

4. REPRODUCIBILITY

Any research result must be reproducible from stored data.

────────────────────────────

REFERENCE DOMAIN

TABLES

assets

timeframes

strategy_versions

strategy_parameters

────────────────────────────

RELATIONSHIP

strategy_versions

1 → MANY

strategy_parameters

Meaning:

A strategy version can have many parameters.

Each parameter belongs to exactly one strategy version.

────────────────────────────

MARKET DOMAIN

TABLES

market_candles

candle_integrity_checks

data_ingestion_runs

────────────────────────────

RELATIONSHIPS

assets

1 → MANY

market_candles

────────────────────────────

timeframes

1 → MANY

market_candles

────────────────────────────

assets

1 → MANY

data_ingestion_runs

────────────────────────────

timeframes

1 → MANY

data_ingestion_runs

────────────────────────────

jobs

1 → MANY

data_ingestion_runs

Meaning:

One ingestion job may process many ingestion runs.

────────────────────────────

RESEARCH DOMAIN

TABLES

hypotheses

experiments

research_results

────────────────────────────

RELATIONSHIPS

hypotheses

1 → MANY

experiments

Meaning:

A hypothesis may be tested multiple times.

────────────────────────────

experiments

1 → MANY

research_results

Meaning:

Experiments may generate multiple result records.

────────────────────────────

SIGNAL DOMAIN

TABLES

signals

signal_outcomes

────────────────────────────

RELATIONSHIPS

strategy_versions

1 → MANY

signals

Meaning:

Every signal must reference the strategy version that generated it.

────────────────────────────

assets

1 → MANY

signals

────────────────────────────

timeframes

1 → MANY

signals

────────────────────────────

signals

1 → MANY

signal_outcomes

Meaning:

A signal may generate multiple outcome evaluations over time.

────────────────────────────

RISK DOMAIN

TABLES

risk_decisions

────────────────────────────

RELATIONSHIPS

signals

1 → 1

risk_decisions

Meaning:

Every signal must receive exactly one risk decision.

Approved or rejected.

No signal may bypass risk review.

────────────────────────────

EXECUTION DOMAIN

TABLES

executions

────────────────────────────

RELATIONSHIPS

risk_decisions

1 → MANY

executions

Meaning:

A risk decision may generate:

- entry order
- stop order
- take profit order

All must remain linked.

────────────────────────────

signals

1 → MANY

executions

Meaning:

Execution history remains traceable to originating signals.

────────────────────────────

AUDIT DOMAIN

TABLES

audit_events

────────────────────────────

RELATIONSHIPS

signals

1 → MANY

audit_events

────────────────────────────

executions

1 → MANY

audit_events

────────────────────────────

risk_decisions

1 → MANY

audit_events

────────────────────────────

control_events

1 → MANY

audit_events

────────────────────────────

Meaning:

Every major event creates audit records.

────────────────────────────

CONTROL DOMAIN

TABLES

control_events

system_config

────────────────────────────

RELATIONSHIPS

None Required

Reason:

Control actions are event-driven.

Configuration values are globally accessible.

────────────────────────────

MONITORING DOMAIN

TABLES

jobs

system_health

────────────────────────────

RELATIONSHIPS

jobs

1 → MANY

audit_events

Meaning:

Job execution history must be auditable.

────────────────────────────

SYSTEM HEALTH

Independent telemetry stream.

No direct dependencies.

────────────────────────────

FULL SIGNAL LIFECYCLE

strategy_version

↓

signal

↓

risk_decision

↓

execution

↓

signal_outcome

↓

audit_events

Meaning:

Every trade can be reconstructed.

────────────────────────────

FULL RESEARCH LIFECYCLE

hypothesis

↓

experiment

↓

research_result

Meaning:

Every research conclusion can be reconstructed.

────────────────────────────

FULL DATA LIFECYCLE

job

↓

data_ingestion_run

↓

market_candle

↓

signal

Meaning:

Every signal can be traced back to source market data.

────────────────────────────

FORBIDDEN RELATIONSHIPS

signals → executions

without risk_decisions

PROHIBITED

────────────────────────────

research_results → signals

direct connection

PROHIBITED

────────────────────────────

applications → market_candles

bypassing database controls

PROHIBITED

────────────────────────────

INSTITUTIONAL INTEGRITY RULES

Rule 1

No orphan records.

────────────────────────────

Rule 2

No undocumented relationships.

────────────────────────────

Rule 3

Every execution must trace to a signal.

────────────────────────────

Rule 4

Every signal must trace to a strategy version.

────────────────────────────

Rule 5

Every research result must trace to a hypothesis.

────────────────────────────

Rule 6

Every critical event must trace to an audit record.

────────────────────────────

Rule 7

Database relationships are considered part of risk management.

Broken relationships are system failures.

END OF DOCUMENT
