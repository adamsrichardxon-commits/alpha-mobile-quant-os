ALPHAMOBILE QUANT OS — CONFLUENCE ENGINE

PURPOSE

Define the quantitative decision framework used to combine outputs from all upstream analytical engines.

The Confluence Engine transforms independent market observations into a unified probabilistic assessment.

No trading signal may be generated without passing through the Confluence Engine.

────────────────────────────

MISSION

Measure evidence.

Score evidence.

Aggregate evidence.

Determine whether sufficient evidence exists to justify signal generation.

────────────────────────────

DESIGN PHILOSOPHY

The system does not seek certainty.

The system seeks statistical advantage.

Every signal is a probability estimate.

Not a prediction.

────────────────────────────

CORE PRINCIPLES

Principle 1

No single factor may trigger a trade.

────────────────────────────

Principle 2

Independent evidence increases confidence.

────────────────────────────

Principle 3

Conflicting evidence reduces confidence.

────────────────────────────

Principle 4

Evidence must be quantifiable.

────────────────────────────

Principle 5

Confluence must be reproducible.

────────────────────────────

INPUT ENGINES

Market Structure Engine

Liquidity Engine

Regime Engine

────────────────────────────

FUTURE INPUTS

Volume Engine

Execution Engine

Portfolio Engine

Machine Learning Layer

────────────────────────────

CONFLUENCE MODEL

Total Score

0 – 100

────────────────────────────

WEIGHTING FRAMEWORK

Market Structure

40%

────────────────────────────

Liquidity

25%

────────────────────────────

Regime

35%

────────────────────────────

TOTAL

100%

────────────────────────────

MARKET STRUCTURE COMPONENT

Maximum Contribution

40 Points

Inputs

Structure Confidence

BOS Quality

MSS Quality

Displacement Strength

Trend Persistence

────────────────────────────

LIQUIDITY COMPONENT

Maximum Contribution

25 Points

Inputs

Pool Strength

Sweep Severity

Imbalance Strength

Absorption Strength

Liquidity State

────────────────────────────

REGIME COMPONENT

Maximum Contribution

35 Points

Inputs

Regime Quality

Regime Confidence

Volatility Score

Participation Score

Stability Score

────────────────────────────

PENALTY ENGINE

PURPOSE

Reduce confidence when contradictory conditions exist.

────────────────────────────

PENALTY TYPES

Structure Conflict

Liquidity Conflict

Regime Conflict

Volatility Conflict

Data Quality Conflict

────────────────────────────

PENALTY RANGE

0 – 30

────────────────────────────

FINAL SCORE

Final Score

=

Raw Confluence Score

−

Penalty Score

────────────────────────────

CONFLUENCE TIERS

TIER A+

95 – 100

Exceptional Alignment

────────────────────────────

TIER A

90 – 94

Strong Alignment

────────────────────────────

TIER B

80 – 89

Tradable

────────────────────────────

TIER C

70 – 79

Conditional

────────────────────────────

TIER D

60 – 69

Weak

────────────────────────────

REJECTED

Below 60

────────────────────────────

LONG SIGNAL REQUIREMENTS

Bullish Structure

────────────────────────────

Bullish Regime

────────────────────────────

No Major Liquidity Conflict

────────────────────────────

Confluence Score ≥ 80

────────────────────────────

SHORT SIGNAL REQUIREMENTS

Bearish Structure

────────────────────────────

Bearish Regime

────────────────────────────

No Major Liquidity Conflict

────────────────────────────

Confluence Score ≥ 80

────────────────────────────

SIGNAL QUALITY CLASSIFICATION

ELITE

95+

────────────────────────────

HIGH

90+

────────────────────────────

STANDARD

80+

────────────────────────────

REJECTED

Below 80

────────────────────────────

CONFIDENCE CALIBRATION

PURPOSE

Prevent overconfidence.

────────────────────────────

RULE

No signal may report confidence above historical validated performance.

────────────────────────────

EXAMPLE

Backtest Win Rate

62%

Maximum Reported Confidence

62%

────────────────────────────

DATA QUALITY GATE

PURPOSE

Protect against corrupted inputs.

────────────────────────────

RULE

Dataset Certification

Must Equal

GOLD

────────────────────────────

Otherwise

Signal Generation Blocked

────────────────────────────

EVENT REGISTRY

CONFLUENCE_PASS

CONFLUENCE_FAIL

PENALTY_APPLIED

QUALITY_UPGRADE

QUALITY_DOWNGRADE

────────────────────────────

RESEARCH OUTPUTS

confluence_score

signal_quality

penalty_score

structure_contribution

liquidity_contribution

regime_contribution

trade_eligible

────────────────────────────

OPTIMIZATION POLICY

Weights may only be modified through:

Research

Validation

Governance Approval

────────────────────────────

VALIDATION RULES

No Future Leakage

No Repainting

No Manual Overrides

Deterministic Scoring

────────────────────────────

BACKTEST REQUIREMENTS

All confluence decisions must reference:

Dataset Version

Confluence Engine Version

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

confluence_engine_v1

STATUS

APPROVED FOR IMPLEMENTATION

────────────────────────────

END OF DOCUMENT
