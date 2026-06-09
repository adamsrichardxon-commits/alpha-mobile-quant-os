ALPHAMOBILE QUANT OS — MARKET STRUCTURE ENGINE

PURPOSE

Define the canonical market structure model used throughout AlphaMobile Quant OS.

The Market Structure Engine is the foundational analytical layer from which all higher-order signal generation is derived.

No liquidity analysis, regime classification, confluence scoring, signal generation, backtesting, or execution logic may bypass this engine.

────────────────────────────

DESIGN PHILOSOPHY

Market Structure Policy

HYBRID INSTITUTIONAL STRUCTURE

Incorporates:

• Classical Swing Structure
• Break of Structure (BOS)
• Market Structure Shift (MSS)
• Liquidity Sweeps

Excludes:

• Order Blocks
• Fair Value Gaps
• ICT-specific discretionary concepts
• Subjective chart annotations

Reasoning

The engine must remain:

Objective

Deterministic

Quantifiable

Auditable

Backtestable

Automatable

────────────────────────────

MISSION

Identify and classify the directional state of the market using only observable price action.

────────────────────────────

CORE PRINCIPLES

Principle 1

Price creates structure.

────────────────────────────

Principle 2

Structure precedes signals.

────────────────────────────

Principle 3

Structure must be algorithmically detectable.

────────────────────────────

Principle 4

All classifications must be reproducible.

────────────────────────────

Principle 5

Future data leakage is prohibited.

────────────────────────────

TIMEFRAME HIERARCHY

Strategic Structure

4H

────────────────────────────

Operational Structure

1H

────────────────────────────

Execution Structure

15M

────────────────────────────

Microstructure

5M

────────────────────────────

Noise Layer

1M

Not used for primary structure decisions.

────────────────────────────

SWING DETECTION ENGINE

PURPOSE

Identify significant swing highs and swing lows.

────────────────────────────

SWING HIGH

Definition

A candle whose high is greater than surrounding highs.

Default Confirmation Window

2 candles left

2 candles right

Formal Rule

High(i) > High(i-1)

High(i) > High(i-2)

High(i) > High(i+1)

High(i) > High(i+2)

────────────────────────────

SWING LOW

Definition

A candle whose low is lower than surrounding lows.

Formal Rule

Low(i) < Low(i-1)

Low(i) < Low(i-2)

Low(i) < Low(i+1)

Low(i) < Low(i+2)

────────────────────────────

SWING CLASSIFICATION

HH

Higher High

────────────────────────────

HL

Higher Low

────────────────────────────

LH

Lower High

────────────────────────────

LL

Lower Low

────────────────────────────

STRUCTURE STATE ENGINE

BULLISH STRUCTURE

Requirements

Sequence contains:

HH

and

HL

────────────────────────────

BEARISH STRUCTURE

Requirements

Sequence contains:

LH

and

LL

────────────────────────────

NEUTRAL STRUCTURE

Requirements

No valid directional sequence.

────────────────────────────

STRUCTURE CONFIDENCE SCORE

Range

0 – 100

Inputs

Swing Consistency

Directional Persistence

Swing Magnitude

Volatility Normalization

────────────────────────────

BREAK OF STRUCTURE (BOS)

PURPOSE

Confirm continuation.

────────────────────────────

BULLISH BOS

Requirements

Current Close

«»

Previous Confirmed Swing High

Confirmation

Close Beyond Structure Level

────────────────────────────

BEARISH BOS

Requirements

Current Close

<

Previous Confirmed Swing Low

Confirmation

Close Beyond Structure Level

────────────────────────────

BOS CLASSIFICATION

WEAK

Close only

────────────────────────────

NORMAL

Close + Above Average Range

────────────────────────────

STRONG

Close + Range Expansion + Volume Expansion

────────────────────────────

MARKET STRUCTURE SHIFT (MSS)

PURPOSE

Detect directional transition.

────────────────────────────

BULLISH MSS

Requirements

Existing Bearish Structure

+ 

Violation of Previous Lower High

────────────────────────────

BEARISH MSS

Requirements

Existing Bullish Structure

+ 

Violation of Previous Higher Low

────────────────────────────

MSS CONFIRMATION

Requires:

Structure Violation

+ 

Displacement Event

────────────────────────────

DISPLACEMENT ENGINE

PURPOSE

Measure aggressive directional participation.

────────────────────────────

BULLISH DISPLACEMENT

Conditions

Large Bull Candle

Range Expansion

Above Rolling Average Range

────────────────────────────

BEARISH DISPLACEMENT

Conditions

Large Bear Candle

Range Expansion

Above Rolling Average Range

────────────────────────────

DISPLACEMENT SCORE

Range

0 – 100

────────────────────────────

LIQUIDITY SWEEP ENGINE

PURPOSE

Detect stop-hunt behavior.

────────────────────────────

BUY-SIDE SWEEP

Requirements

Price exceeds prior swing high

and

fails to continue

and

closes back below level

────────────────────────────

SELL-SIDE SWEEP

Requirements

Price exceeds prior swing low

and

fails to continue

and

closes back above level

────────────────────────────

SWEEP STRENGTH SCORE

Range

0 – 100

Inputs

Sweep Distance

Rejection Strength

Volume Expansion

Recovery Speed

────────────────────────────

STRUCTURE EVENT REGISTRY

Event Types

SWING_HIGH

SWING_LOW

HH

HL

LH

LL

BULLISH_BOS

BEARISH_BOS

BULLISH_MSS

BEARISH_MSS

BUY_SIDE_SWEEP

SELL_SIDE_SWEEP

BULLISH_DISPLACEMENT

BEARISH_DISPLACEMENT

────────────────────────────

STRUCTURE VALIDATION RULES

No Future Candles

No Repainting

No Manual Overrides

No Subjective Inputs

────────────────────────────

RESEARCH OUTPUTS

structure_state

structure_confidence

latest_bos

latest_mss

latest_sweep

displacement_score

trend_direction

trend_strength

────────────────────────────

DATA STORAGE REQUIREMENT

All structure events must be persistable.

All structure events must be reproducible.

All structure events must be auditable.

────────────────────────────

BACKTEST REQUIREMENT

Any backtest using structure data must reference:

Dataset Version

Structure Engine Version

Strategy Version

────────────────────────────

SUCCESS CRITERIA

100% Deterministic

100% Reproducible

0 Future Leakage

0 Repainting

Fully Auditable

Fully Automatable

────────────────────────────

VERSION

market_structure_engine_v1

STATUS

APPROVED FOR IMPLEMENTATION

────────────────────────────

END OF DOCUMENT
