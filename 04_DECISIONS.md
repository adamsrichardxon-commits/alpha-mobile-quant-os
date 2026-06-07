SYSTEM DECISIONS LOG

This file stores ALL critical architectural and system decisions.

Purpose:
Prevent system drift and ensure all future changes are traceable.

────────────────────────────

FORMAT FOR ALL ENTRIES:

DECISION ID:
Date:
Decision:
Context:
Reason:
Impact:
Alternatives Considered:
Status: (ACTIVE / DEPRECATED / REPLACED)

────────────────────────────

INITIAL CORE DECISIONS

────────────────────────────

DECISION 001
Date: 2026-06-08
Decision: Use BTC/USDT as the only trading pair
Context: System scope definition
Reason: Reduces complexity and improves statistical focus
Impact: Limits market exposure to one asset
Alternatives Considered: Multi-asset trading
Status: ACTIVE

────────────────────────────

DECISION 002
Date: 2026-06-08
Decision: Use 5-minute timeframe for all signals
Context: Strategy design choice
Reason: Balances noise reduction and trade frequency
Impact: Standardizes all analysis
Alternatives Considered: 1-minute, 15-minute timeframes
Status: ACTIVE

────────────────────────────

DECISION 003
Date: 2026-06-08
Decision: Use rule-based deterministic strategy only
Context: Strategy architecture
Reason: Prevents randomness and overfitting
Impact: No ML or discretionary logic allowed in core signals
Alternatives Considered: Machine learning, discretionary trading
Status: ACTIVE

────────────────────────────

DECISION 004
Date: 2026-06-08
Decision: No live trading until full validation is complete
Context: Risk control policy
Reason: Prevent capital loss from untested strategies
Impact: Forces backtesting and paper trading first
Alternatives Considered: Immediate live deployment
Status: ACTIVE

────────────────────────────

DECISION 005
Date: 2026-06-08
Decision: Supabase used as primary database layer
Context: Infrastructure selection
Reason: Free tier availability + structured SQL storage
Impact: Centralizes all logs and system state
Alternatives Considered: Firebase, local storage
Status: ACTIVE

────────────────────────────

RULE:

No decision may be changed without:
- Logging a new decision
- Marking old decision as REPLACED or DEPRECATED
