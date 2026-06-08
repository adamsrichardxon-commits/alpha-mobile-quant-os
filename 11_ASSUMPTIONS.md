ALPHAMOBILE QUANT OS — ASSUMPTIONS REGISTER

PURPOSE

Track all assumptions.

Assumptions are not facts.

Assumptions are temporary beliefs awaiting evidence.

────────────────────────────

STATUS DEFINITIONS

UNTESTED

Evidence does not exist.

VALIDATED

Evidence supports assumption.

INVALIDATED

Evidence contradicts assumption.

KNOWN LIMITATION

Assumption known to be imperfect.

────────────────────────────

A-001

Assumption

Liquidity sweeps followed by structure shifts may create positive expectancy opportunities.

Status

UNTESTED

Validation Method

Large-sample backtesting

Risk if False

Core strategy invalid.

────────────────────────────

A-002

Assumption

BTC/USDT contains repeatable short-term behavioral patterns.

Status

UNTESTED

Validation Method

Regime testing

Risk if False

Pattern-based trading invalid.

────────────────────────────

A-003

Assumption

Market behavior changes over time.

Status

VALIDATED

Validation Method

Historical observation

Risk if Ignored

Strategy decay.

────────────────────────────

A-004

Assumption

Binance Testnet differs materially from live trading conditions.

Status

KNOWN LIMITATION

Reason

No true liquidity dynamics.
No real slippage behavior.
No market impact.

Risk

False confidence.

Mitigation

Never treat testnet results as production proof.

────────────────────────────

A-005

Assumption

Fixed 1% risk per trade is sufficiently conservative.

Status

UNTESTED

Validation Method

Risk simulation

Risk if False

Suboptimal growth or excessive drawdown.

────────────────────────────

A-006

Assumption

A strategy can lose effectiveness without obvious warning.

Status

VALIDATED

Validation Method

Observed across financial markets.

Risk if Ignored

Undetected edge decay.

────────────────────────────

MASTER RULE

Every major strategy component must have a corresponding assumption.

No hidden assumptions allowed.

END OF DOCUMENT
