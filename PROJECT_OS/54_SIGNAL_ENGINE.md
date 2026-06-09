ALPHAMOBILE QUANT OS — SIGNAL ENGINE

PURPOSE

Define the canonical signal generation framework used throughout AlphaMobile Quant OS.

The Signal Engine is the final decision layer of the analytical stack.

Its responsibility is to transform validated confluence into structured, auditable, research-grade trading signals.

No signal may exist outside this framework.

────────────────────────────

MISSION

Generate high-quality trading signals.

Maintain complete auditability.

Ensure reproducibility.

Support research, validation, simulation, and execution.

────────────────────────────

ARCHITECTURAL POSITION

Market Structure Engine

↓

Liquidity Engine

↓

Regime Engine

↓

Confluence Engine

↓

Signal Engine

↓

Backtesting

↓

Paper Trading

↓

Execution

────────────────────────────

CORE PRINCIPLES

Principle 1

Signals are outputs of evidence.

Not predictions.

────────────────────────────

Principle 2

Every signal must be reproducible.

────────────────────────────

Principle 3

Every signal must be auditable.

────────────────────────────

Principle 4

Every signal must have a lifecycle.

────────────────────────────

Principle 5

Signal generation must be deterministic.

────────────────────────────

SIGNAL TYPES

LONG

────────────────────────────

SHORT

────────────────────────────

No other signal types permitted.

────────────────────────────

SIGNAL ELIGIBILITY REQUIREMENTS

Market Structure

PASS

────────────────────────────

Liquidity

PASS

────────────────────────────

Regime

PASS

────────────────────────────

Confluence

PASS

────────────────────────────

Dataset Certification

GOLD

────────────────────────────

If any requirement fails

Signal Creation Blocked

────────────────────────────

SIGNAL STATES

STATE 1

CREATED

────────────────────────────

STATE 2

VALIDATED

────────────────────────────

STATE 3

ACTIVE

────────────────────────────

STATE 4

TRIGGERED

────────────────────────────

STATE 5

EXPIRED

────────────────────────────

STATE 6

CANCELLED

────────────────────────────

STATE 7

COMPLETED

────────────────────────────

SIGNAL OBJECT

Required Fields

signal_id

signal_timestamp

signal_type

asset_id

timeframe_id

dataset_version

strategy_version

structure_version

liquidity_version

regime_version

confluence_version

────────────────────────────

SIGNAL QUALITY MODEL

ELITE

95+

────────────────────────────

HIGH

90 – 94

────────────────────────────

STANDARD

80 – 89

────────────────────────────

REJECTED

Below 80

────────────────────────────

SIGNAL CONFIDENCE MODEL

Range

0 – 100

────────────────────────────

RULE

Signal confidence may never exceed validated historical performance.

────────────────────────────

SIGNAL GENERATION PROCESS

STEP 1

Collect Engine Outputs

────────────────────────────

STEP 2

Verify Data Quality

────────────────────────────

STEP 3

Verify Regime Permission

────────────────────────────

STEP 4

Calculate Confluence

────────────────────────────

STEP 5

Apply Signal Filters

────────────────────────────

STEP 6

Generate Signal

────────────────────────────

STEP 7

Register Signal

────────────────────────────

STEP 8

Await Validation

────────────────────────────

SIGNAL FILTERS

FILTER 1

Dataset Certification

Must Equal GOLD

────────────────────────────

FILTER 2

Regime Quality

Must Be ≥ 70

────────────────────────────

FILTER 3

Confluence Score

Must Be ≥ 80

────────────────────────────

FILTER 4

Structure Confidence

Must Be ≥ 70

────────────────────────────

FILTER 5

Liquidity Confidence

Must Be ≥ 70

────────────────────────────

SIGNAL EXPIRATION ENGINE

PURPOSE

Prevent stale signals.

────────────────────────────

EXPIRATION RULE

Signal validity is limited.

────────────────────────────

DEFAULT EXPIRATION

15M Signal

4 Hours

────────────────────────────

1H Signal

24 Hours

────────────────────────────

4H Signal

72 Hours

────────────────────────────

Expired signals become:

EXPIRED

────────────────────────────

SIGNAL INVALIDATION ENGINE

PURPOSE

Remove signals when market conditions change.

────────────────────────────

INVALIDATION EVENTS

Opposing MSS

────────────────────────────

Regime Change

────────────────────────────

Confluence Breakdown

────────────────────────────

Liquidity Conflict

────────────────────────────

Data Quality Failure

────────────────────────────

Result

Signal State

CANCELLED

────────────────────────────

SIGNAL STRENGTH SCORE

Range

0 – 100

Inputs

Confluence Score

Structure Confidence

Liquidity Confidence

Regime Quality

────────────────────────────

SIGNAL PRIORITY ENGINE

PURPOSE

Rank competing opportunities.

────────────────────────────

PRIORITY LEVELS

P1

Exceptional

────────────────────────────

P2

High

────────────────────────────

P3

Standard

────────────────────────────

P4

Low

────────────────────────────

SIGNAL GOVERNANCE

Every signal must retain:

Source Dataset

Strategy Version

Engine Versions

Timestamp

Decision Inputs

────────────────────────────

SIGNAL AUDIT TRAIL

Required

100%

────────────────────────────

Signal Creation Event

────────────────────────────

Signal Validation Event

────────────────────────────

Signal State Changes

────────────────────────────

Signal Completion Event

────────────────────────────

SIGNAL REGISTRY OUTPUTS

signal_id

signal_state

signal_type

signal_quality

signal_confidence

signal_strength

signal_priority

created_at

updated_at

────────────────────────────

RESEARCH OUTPUTS

signal_count

signal_quality_distribution

signal_conversion_rate

signal_expiration_rate

signal_failure_rate

────────────────────────────

VALIDATION RULES

No Future Leakage

No Repainting

No Manual Overrides

Deterministic Signal Creation

────────────────────────────

BACKTEST REQUIREMENTS

All signals must reference:

Dataset Version

Strategy Version

Market Structure Version

Liquidity Version

Regime Version

Confluence Version

Signal Version

────────────────────────────

SUCCESS CRITERIA

100% Deterministic

100% Reproducible

0 Repainting

0 Future Leakage

100% Auditability

100% Traceability

Fully Automatable

────────────────────────────

VERSION

signal_engine_v1

STATUS

APPROVED FOR IMPLEMENTATION

────────────────────────────

END OF DOCUMENT
