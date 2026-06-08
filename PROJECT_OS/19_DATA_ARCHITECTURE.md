ALPHAMOBILE QUANT OS — DATA ARCHITECTURE

PURPOSE

Define how data moves through the system.

No component may exchange information outside this architecture.

────────────────────────────

PRIMARY DATA FLOW

Binance Market Data

↓

Data Collection Layer

↓

Supabase Database

↓

Research Layer

↓

Signal Layer

↓

Risk Layer

↓

Execution Layer

↓

Audit Layer

↓

Telegram Control Layer

────────────────────────────

DATA COLLECTION LAYER

Purpose:

Acquire raw market information.

Source:

Binance API

Responsibilities:

- candle collection
- timestamp validation
- duplicate prevention
- gap detection

Output:

Validated OHLCV data

────────────────────────────

DATABASE LAYER

Purpose:

Single source of truth.

Technology:

Supabase PostgreSQL

Responsibilities:

- historical storage
- signal storage
- trade storage
- audit logging

Rule:

No component may store authoritative data outside Supabase.

────────────────────────────

RESEARCH LAYER

Purpose:

Evaluate hypotheses.

Input:

Historical market data

Output:

Research findings

Restrictions:

Cannot execute trades.

────────────────────────────

SIGNAL LAYER

Purpose:

Generate trade signals.

Input:

Validated market data

Output:

Signal events

Restrictions:

Cannot execute trades.

────────────────────────────

RISK LAYER

Purpose:

Approve or reject signals.

Input:

Signal events

Output:

Approved trades

Authority:

Final veto power.

────────────────────────────

EXECUTION LAYER

Purpose:

Execute approved trades.

Input:

Approved trades

Output:

Execution records

Restrictions:

Cannot create signals.

────────────────────────────

AUDIT LAYER

Purpose:

Create complete traceability.

Responsibilities:

- signal history
- trade history
- approval history
- system events

Rule:

If an event is not logged, it did not occur.

────────────────────────────

CONTROL LAYER

Technology:

Telegram

Purpose:

Human oversight.

Capabilities:

- status requests
- kill switch
- health monitoring

────────────────────────────

ARCHITECTURE RULES

No direct layer skipping.

All critical actions must be logged.

Supabase is the authoritative datastore.

Architecture changes require Decision Ledger approval.

END OF DOCUMENT
