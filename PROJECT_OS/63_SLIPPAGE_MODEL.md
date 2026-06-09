ALPHAMOBILE QUANT OS — SLIPPAGE MODEL

PURPOSE

Define the canonical slippage framework used throughout AlphaMobile Quant OS.

The Slippage Model estimates the difference between expected execution price and achievable execution price.

No execution simulation may bypass this framework.

────────────────────────────

MISSION

Model execution friction.

Prevent performance inflation.

Improve realism.

Support future live trading deployment.

────────────────────────────

CORE PRINCIPLES

Principle 1

Every market has friction.

────────────────────────────

Principle 2

Perfect fills do not exist.

────────────────────────────

Principle 3

Slippage is unavoidable.

────────────────────────────

Principle 4

Conservative assumptions are preferred.

────────────────────────────

Principle 5

Slippage assumptions must be auditable.

────────────────────────────

ARCHITECTURAL POSITION

Signal Engine

↓

Execution Simulation Engine

↓

Fill Model

↓

Slippage Model

↓

Fee Model

↓

Position Engine

────────────────────────────

DEFINITION

Expected Price

Minus

Actual Fill Price

Equals

Execution Slippage

────────────────────────────

SLIPPAGE TYPES

TYPE 1

ENTRY SLIPPAGE

────────────────────────────

TYPE 2

EXIT SLIPPAGE

────────────────────────────

TYPE 3

STOP LOSS SLIPPAGE

────────────────────────────

TYPE 4

TAKE PROFIT SLIPPAGE

────────────────────────────

TYPE 5

GAP SLIPPAGE

────────────────────────────

DEFAULT POLICY

Slippage Enabled

Mandatory

────────────────────────────

Zero Slippage

Forbidden

────────────────────────────

SLIPPAGE STATES

NONE

────────────────────────────

LOW

────────────────────────────

NORMAL

────────────────────────────

HIGH

────────────────────────────

EXTREME

────────────────────────────

BASE SLIPPAGE ENGINE

Purpose

Establish minimum execution friction.

────────────────────────────

BTCUSDT

Default Base Slippage

1 Basis Point

────────────────────────────

Formula

Expected Price

×

0.0001

────────────────────────────

VOLATILITY ADJUSTMENT ENGINE

Purpose

Increase slippage during unstable conditions.

────────────────────────────

Inputs

ATR Percentile

Range Expansion

Volatility State

────────────────────────────

Adjustment Levels

LOW

1.0x

────────────────────────────

NORMAL

1.5x

────────────────────────────

HIGH

2.0x

────────────────────────────

EXTREME

3.0x

────────────────────────────

LIQUIDITY ADJUSTMENT ENGINE

Purpose

Adjust slippage based on liquidity conditions.

────────────────────────────

Inputs

Liquidity State

Pool Strength

Imbalance Score

────────────────────────────

Adjustment Levels

DEEP LIQUIDITY

0.75x

────────────────────────────

NORMAL LIQUIDITY

1.0x

────────────────────────────

THIN LIQUIDITY

2.0x

────────────────────────────

SWEEP CONDITIONS

3.0x

────────────────────────────

REGIME ADJUSTMENT ENGINE

Purpose

Reflect execution degradation during unstable regimes.

────────────────────────────

TRENDING

1.0x

────────────────────────────

RANGING

1.0x

────────────────────────────

TRANSITION

1.5x

────────────────────────────

EXPANSION

2.0x

────────────────────────────

FINAL SLIPPAGE FORMULA

Final Slippage

=

Base Slippage

×

Volatility Multiplier

×

Liquidity Multiplier

×

Regime Multiplier

────────────────────────────

ENTRY APPLICATION

LONG

Add Slippage

────────────────────────────

SHORT

Subtract Slippage

────────────────────────────

EXIT APPLICATION

LONG EXIT

Subtract Slippage

────────────────────────────

SHORT EXIT

Add Slippage

────────────────────────────

STOP LOSS POLICY

Purpose

Model adverse execution realistically.

────────────────────────────

Rule

Stop Losses Receive

Worst Realistic Slippage

────────────────────────────

Reason

Stops often execute during stress.

────────────────────────────

TAKE PROFIT POLICY

Purpose

Prevent optimistic exits.

────────────────────────────

Rule

Take Profits Also Receive Slippage

────────────────────────────

No Free Exits

Allowed

────────────────────────────

GAP HANDLING ENGINE

Purpose

Handle price discontinuities.

────────────────────────────

Gap Through Stop

Fill At Next Available Price

────────────────────────────

Gap Through Target

Fill At Next Available Price

────────────────────────────

No Synthetic Fills

Allowed

────────────────────────────

SLIPPAGE QUALITY SCORE

Range

0 – 100

────────────────────────────

Inputs

Model Stability

Parameter Consistency

Historical Realism

Execution Consistency

────────────────────────────

EVENT REGISTRY

SLIPPAGE_APPLIED

────────────────────────────

ENTRY_SLIPPAGE

────────────────────────────

EXIT_SLIPPAGE

────────────────────────────

STOP_SLIPPAGE

────────────────────────────

GAP_SLIPPAGE

────────────────────────────

EXTREME_SLIPPAGE

────────────────────────────

AUDIT REQUIREMENTS

Every Slippage Event Must Retain

Expected Price

Actual Price

Slippage Amount

Slippage Multiplier

Dataset Version

Strategy Version

Timestamp

────────────────────────────

RESEARCH OUTPUTS

average_slippage

maximum_slippage

slippage_distribution

slippage_cost

execution_friction_score

────────────────────────────

FAILURE CONDITIONS

Zero Slippage Enabled

────────────────────────────

Future Leakage

────────────────────────────

Synthetic Price Improvement

────────────────────────────

Optimistic Gap Handling

────────────────────────────

Any Failure

Backtest Invalid

────────────────────────────

INSTITUTIONAL CONSERVATISM RULE

When multiple slippage outcomes are possible:

Use the least favorable realistic outcome.

────────────────────────────

Example

Possible Outcomes

0.01%

0.03%

0.05%

────────────────────────────

Selected Outcome

0.05%

────────────────────────────

SUCCESS CRITERIA

100% Reproducible

100% Auditable

0 Future Leakage

0 Free Exits

0 Zero-Slippage Assumptions

Institutional Grade

────────────────────────────

VERSION

slippage_model_v1

STATUS

APPROVED FOR IMPLEMENTATION

────────────────────────────

END OF DOCUMENT
