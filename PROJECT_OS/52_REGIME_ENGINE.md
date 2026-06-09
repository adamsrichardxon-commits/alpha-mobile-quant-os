ALPHAMOBILE QUANT OS — REGIME ENGINE

PURPOSE

Define the canonical market regime classification system used throughout AlphaMobile Quant OS.

The Regime Engine determines the current operating environment of the market and controls whether signal generation is permitted.

No strategy may generate executable signals without regime approval.

────────────────────────────

MISSION

Classify the current market environment.

Identify favorable and unfavorable trading conditions.

Provide regime-aware filtering for all downstream systems.

────────────────────────────

DESIGN PRINCIPLES

Principle 1

Markets operate in regimes.

────────────────────────────

Principle 2

Strategies perform differently across regimes.

────────────────────────────

Principle 3

Regime classification must be objective.

────────────────────────────

Principle 4

Regime classification must be deterministic.

────────────────────────────

Principle 5

Regime filters take precedence over signal generation.

────────────────────────────

TIMEFRAME HIERARCHY

Primary Regime

4H

────────────────────────────

Secondary Regime

1H

────────────────────────────

Execution Context

15M

────────────────────────────

5M and 1M

Execution-only context.

Not regime authority.

────────────────────────────

REGIME TYPES

REGIME 1

TRENDING_BULLISH

────────────────────────────

REGIME 2

TRENDING_BEARISH

────────────────────────────

REGIME 3

RANGING

────────────────────────────

REGIME 4

EXPANSION

────────────────────────────

REGIME 5

TRANSITION

────────────────────────────

REGIME 6

UNDEFINED

────────────────────────────

TRENDING BULLISH

Requirements

Bullish Structure

Structure Confidence ≥ 70

Bullish BOS Dominance

Bullish MSS Count > Bearish MSS Count

────────────────────────────

TRENDING BEARISH

Requirements

Bearish Structure

Structure Confidence ≥ 70

Bearish BOS Dominance

Bearish MSS Count > Bullish MSS Count

────────────────────────────

RANGING

Requirements

No directional dominance

Repeated liquidity interaction

Low structural progression

Compression behavior

────────────────────────────

EXPANSION

Requirements

Displacement Score ≥ 75

Range Expansion ≥ Threshold

Volatility Expansion Confirmed

────────────────────────────

TRANSITION

Requirements

Recent MSS

Conflicting Structure Signals

Regime Confidence Reduction

────────────────────────────

REGIME CONFIDENCE SCORE

Range

0 – 100

Inputs

Structure Confidence

Liquidity Confidence

Displacement Score

Trend Persistence

Volatility Stability

────────────────────────────

VOLATILITY ENGINE

PURPOSE

Measure current volatility state.

────────────────────────────

VOLATILITY STATES

VERY_LOW

LOW

NORMAL

HIGH

EXTREME

────────────────────────────

VOLATILITY SCORE

Range

0 – 100

Inputs

ATR Normalization

Range Expansion

Historical Percentile Ranking

────────────────────────────

PARTICIPATION ENGINE

PURPOSE

Measure market activity.

────────────────────────────

PARTICIPATION STATES

WEAK

NORMAL

STRONG

EXTREME

────────────────────────────

INPUTS

Volume Activity

Trade Count Activity

Range Activity

────────────────────────────

PARTICIPATION SCORE

Range

0 – 100

────────────────────────────

REGIME STABILITY ENGINE

PURPOSE

Determine reliability of current regime.

────────────────────────────

STABILITY STATES

UNSTABLE

WEAK

MODERATE

STRONG

────────────────────────────

INPUTS

Regime Persistence

Signal Consistency

Structure Consistency

Liquidity Consistency

────────────────────────────

REGIME STABILITY SCORE

Range

0 – 100

────────────────────────────

TRADE PERMISSION MATRIX

TRENDING_BULLISH

Long Signals

ALLOWED

Short Signals

BLOCKED

────────────────────────────

TRENDING_BEARISH

Short Signals

ALLOWED

Long Signals

BLOCKED

────────────────────────────

RANGING

Mean Reversion

ALLOWED

Trend Following

RESTRICTED

────────────────────────────

EXPANSION

Momentum Strategies

ALLOWED

Countertrend Strategies

BLOCKED

────────────────────────────

TRANSITION

All Signals

RESTRICTED

────────────────────────────

UNDEFINED

All Signals

BLOCKED

────────────────────────────

REGIME QUALITY SCORE

Range

0 – 100

Inputs

Regime Confidence

Volatility Score

Participation Score

Stability Score

────────────────────────────

REGIME QUALITY TIERS

TIER A

90 – 100

────────────────────────────

TIER B

80 – 89

────────────────────────────

TIER C

70 – 79

────────────────────────────

TIER D

60 – 69

────────────────────────────

REJECTED

Below 60

────────────────────────────

EVENT REGISTRY

REGIME_CHANGE

REGIME_CONFIRMATION

VOLATILITY_EXPANSION

VOLATILITY_COMPRESSION

PARTICIPATION_SURGE

PARTICIPATION_DROP

STABILITY_INCREASE

STABILITY_DECREASE

────────────────────────────

RESEARCH OUTPUTS

regime_type

regime_confidence

regime_quality

volatility_state

volatility_score

participation_score

stability_score

trade_permission

────────────────────────────

SIGNAL GATING RULE

No signal may proceed to the Confluence Engine unless:

Regime Quality ≥ 70

and

Trade Permission = ALLOWED

────────────────────────────

VALIDATION RULES

No Future Leakage

No Repainting

No Manual Overrides

Deterministic Classification

────────────────────────────

BACKTEST REQUIREMENTS

All regime decisions must reference:

Dataset Version

Regime Engine Version

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

regime_engine_v1

STATUS

APPROVED FOR IMPLEMENTATION

────────────────────────────

END OF DOCUMENT
