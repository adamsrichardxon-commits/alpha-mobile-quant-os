ALPHAMOBILE QUANT OS — LIQUIDITY ENGINE

PURPOSE

Define the canonical liquidity model used throughout AlphaMobile Quant OS.

The Liquidity Engine identifies liquidity concentrations, liquidity sweeps, liquidity imbalances, and liquidity interaction behavior.

Liquidity is treated as an observable market phenomenon, not a predictive theory.

────────────────────────────

MISSION

Identify where liquidity is likely concentrated.

Identify when liquidity is consumed.

Identify when liquidity is rejected.

Provide contextual information for structure interpretation.

────────────────────────────

DESIGN PRINCIPLES

Principle 1

Liquidity exists where market participants cluster.

────────────────────────────

Principle 2

Liquidity events must be measurable.

────────────────────────────

Principle 3

Liquidity is context.

Not an entry signal.

────────────────────────────

Principle 4

All liquidity classifications must be deterministic.

────────────────────────────

LIQUIDITY TYPES

TYPE 1

BUY-SIDE LIQUIDITY

Location

Above swing highs

────────────────────────────

TYPE 2

SELL-SIDE LIQUIDITY

Location

Below swing lows

────────────────────────────

TYPE 3

RANGE LIQUIDITY

Location

Range boundaries

────────────────────────────

TYPE 4

CLUSTERED LIQUIDITY

Location

Repeated highs

Repeated lows

Equal highs

Equal lows

────────────────────────────

LIQUIDITY POOL DETECTION

PURPOSE

Identify areas where stop orders are likely concentrated.

────────────────────────────

BUY-SIDE POOL

Requirements

Confirmed Swing High

or

Equal High Cluster

────────────────────────────

SELL-SIDE POOL

Requirements

Confirmed Swing Low

or

Equal Low Cluster

────────────────────────────

POOL STRENGTH SCORE

Range

0 – 100

Inputs

Touch Count

Cluster Density

Recency

Time Persistence

────────────────────────────

EQUAL HIGH ENGINE

PURPOSE

Identify concentrated buy-side liquidity.

────────────────────────────

RULE

Two or more highs

within tolerance threshold.

────────────────────────────

DEFAULT TOLERANCE

0.05%

────────────────────────────

CLASSIFICATION

WEAK

2 highs

────────────────────────────

MODERATE

3 highs

────────────────────────────

STRONG

4+ highs

────────────────────────────

EQUAL LOW ENGINE

PURPOSE

Identify concentrated sell-side liquidity.

────────────────────────────

RULE

Two or more lows

within tolerance threshold.

────────────────────────────

DEFAULT TOLERANCE

0.05%

────────────────────────────

CLASSIFICATION

WEAK

2 lows

────────────────────────────

MODERATE

3 lows

────────────────────────────

STRONG

4+ lows

────────────────────────────

LIQUIDITY SWEEP ENGINE

PURPOSE

Detect liquidity consumption.

────────────────────────────

BUY-SIDE SWEEP

Conditions

Price exceeds liquidity pool

and

fails to hold above

and

closes below pool

────────────────────────────

SELL-SIDE SWEEP

Conditions

Price exceeds liquidity pool

and

fails to hold below

and

closes above pool

────────────────────────────

SWEEP SEVERITY SCORE

Range

0 – 100

Inputs

Penetration Distance

Rejection Magnitude

Volume Expansion

Recovery Velocity

────────────────────────────

SWEEP OUTCOME CLASSIFICATION

TYPE A

FAILED SWEEP

Immediate Reversal

────────────────────────────

TYPE B

PARTIAL SWEEP

Temporary Reversal

────────────────────────────

TYPE C

ACCEPTED SWEEP

Continuation After Sweep

────────────────────────────

LIQUIDITY ABSORPTION ENGINE

PURPOSE

Detect areas where liquidity is consumed without significant directional continuation.

────────────────────────────

INDICATORS

Multiple Tests

Low Progression

Reduced Follow Through

────────────────────────────

ABSORPTION SCORE

Range

0 – 100

────────────────────────────

LIQUIDITY IMBALANCE ENGINE

PURPOSE

Detect abnormal directional dominance.

────────────────────────────

BULLISH IMBALANCE

Directional Expansion

Above Normal Range

────────────────────────────

BEARISH IMBALANCE

Directional Expansion

Below Normal Range

────────────────────────────

IMBALANCE SCORE

Range

0 – 100

────────────────────────────

LIQUIDITY STATE MODEL

STATE 1

ACCUMULATION

────────────────────────────

STATE 2

DISTRIBUTION

────────────────────────────

STATE 3

SWEEPING

────────────────────────────

STATE 4

EXPANSION

────────────────────────────

STATE 5

BALANCED

────────────────────────────

LIQUIDITY CONFIDENCE SCORE

Range

0 – 100

Inputs

Pool Strength

Sweep Quality

Absorption Strength

Imbalance Strength

────────────────────────────

EVENT REGISTRY

BUY_SIDE_POOL

SELL_SIDE_POOL

EQUAL_HIGHS

EQUAL_LOWS

BUY_SIDE_SWEEP

SELL_SIDE_SWEEP

LIQUIDITY_ABSORPTION

BULLISH_IMBALANCE

BEARISH_IMBALANCE

────────────────────────────

RESEARCH OUTPUTS

liquidity_state

liquidity_confidence

nearest_buy_side_pool

nearest_sell_side_pool

latest_sweep

sweep_severity

imbalance_score

absorption_score

────────────────────────────

VALIDATION RULES

No Future Leakage

No Repainting

No Manual Overrides

Deterministic Classification

────────────────────────────

BACKTEST REQUIREMENTS

All liquidity decisions must reference:

Dataset Version

Liquidity Engine Version

Strategy Version

────────────────────────────

SUCCESS CRITERIA

100% Deterministic

100% Reproducible

0 Repainting

0 Future Leakage

Fully Auditable

Fully Automatable

────────────────────────────

VERSION

liquidity_engine_v1

STATUS

APPROVED FOR IMPLEMENTATION

────────────────────────────

END OF DOCUMENT
