SYSTEM TECHNICAL DEBT REGISTER

This file tracks ALL weaknesses, inefficiencies, and unresolved issues in the system.

Purpose:
Prevent silent degradation of system quality over time.

No issue should remain untracked.

────────────────────────────

FORMAT FOR ALL ENTRIES:

DEBT ID:
Date:
Issue:
Cause:
Impact:
Severity: (LOW / MEDIUM / HIGH / CRITICAL)
Proposed Fix:
Status: (OPEN / IN PROGRESS / RESOLVED)

────────────────────────────

CURRENT TECHNICAL DEBT

────────────────────────────

DEBT 001
Date: 2026-06-08
Issue:
Signal Engine does not yet exist

Cause:
System still in setup phase

Impact:
No actual trading logic available

Severity:
CRITICAL

Proposed Fix:
Build Signal Engine v1 (liquidity sweep + MSS detection logic)

Status:
OPEN

────────────────────────────

DEBT 002
Date: 2026-06-08
Issue:
No data pipeline connected to Binance API

Cause:
Infrastructure phase not started

Impact:
System cannot process real market data

Severity:
CRITICAL

Proposed Fix:
Implement data collection layer using Binance API + Supabase

Status:
OPEN

────────────────────────────

DEBT 003
Date: 2026-06-08
Issue:
No backtesting engine implemented

Cause:
Phase 4 not started

Impact:
No validation of trading strategy possible

Severity:
CRITICAL

Proposed Fix:
Build backtesting framework for historical simulation

Status:
OPEN

────────────────────────────

DEBT 004
Date: 2026-06-08
Issue:
No execution system connected to Binance Testnet

Cause:
Execution layer not implemented

Impact:
Cannot simulate real trade execution

Severity:
HIGH

Proposed Fix:
Build execution module with order placement + logging

Status:
OPEN

────────────────────────────

RULES

- Technical debt must always be visible
- No hidden system weaknesses allowed
- Debt must be resolved in priority order (CRITICAL → LOW)
- No new feature may be added if CRITICAL debt remains unresolved
