ALPHAMOBILE QUANT OS — WALK FORWARD VALIDATION FRAMEWORK

PURPOSE

Define the canonical walk-forward validation framework used throughout AlphaMobile Quant OS.

The Walk Forward Validation Framework evaluates a strategy's ability to maintain performance when applied to unseen future market data.

No strategy may achieve production certification without passing this framework.

────────────────────────────

MISSION

Detect overfitting.

Validate generalization.

Measure stability.

Measure adaptation.

Confirm future viability.

────────────────────────────

CORE PRINCIPLES

Principle 1

Past performance is not proof.

────────────────────────────

Principle 2

Unseen data is mandatory.

────────────────────────────

Principle 3

Validation must mimic reality.

────────────────────────────

Principle 4

Optimization and evaluation must remain separated.

────────────────────────────

Principle 5

Robust strategies survive regime changes.

────────────────────────────

ARCHITECTURAL POSITION

Historical Dataset

↓

Optimization Window

↓

Validation Window

↓

Performance Analytics

↓

Research Reporting

↓

Promotion Decision

────────────────────────────

WALK FORWARD OBJECTIVE

Demonstrate that strategy performance persists when applied to future market conditions.

────────────────────────────

VALIDATION TYPES

TYPE 1

Rolling Walk Forward

────────────────────────────

TYPE 2

Anchored Walk Forward

────────────────────────────

TYPE 3

Expanding Walk Forward

────────────────────────────

DEFAULT TYPE

Rolling Walk Forward

────────────────────────────

VERSION 1 POLICY

Rolling Walk Forward Only

────────────────────────────

DATASET REQUIREMENTS

Certification

GOLD

────────────────────────────

Dataset Hash

Required

────────────────────────────

Dataset Version

Required

────────────────────────────

OPTIMIZATION WINDOW

Purpose

Parameter discovery.

────────────────────────────

May Use

Training Data Only

────────────────────────────

Future Data

Forbidden

────────────────────────────

VALIDATION WINDOW

Purpose

Performance evaluation.

────────────────────────────

Must Remain Hidden During Optimization

────────────────────────────

Modification

Forbidden

────────────────────────────

DEFAULT WINDOW POLICY

Training

70%

────────────────────────────

Validation

30%

────────────────────────────

Minimum Validation Coverage

12 Months

────────────────────────────

WINDOW ADVANCEMENT

Step 1

Train

────────────────────────────

Step 2

Validate

────────────────────────────

Step 3

Advance Window

────────────────────────────

Step 4

Repeat

────────────────────────────

Until Dataset Exhausted

────────────────────────────

ROLLING EXAMPLE

Window 1

Train

Years 1–3

Validate

Year 4

────────────────────────────

Window 2

Train

Years 2–4

Validate

Year 5

────────────────────────────

Window 3

Train

Years 3–5

Validate

Year 6

────────────────────────────

Continue Until Completion

────────────────────────────

VALIDATION METRICS

Trade Count

────────────────────────────

Win Rate

────────────────────────────

Profit Factor

────────────────────────────

Expectancy

────────────────────────────

Sharpe Ratio

────────────────────────────

Sortino Ratio

────────────────────────────

Net Profit

────────────────────────────

Maximum Drawdown

────────────────────────────

Recovery Factor

────────────────────────────

WALK FORWARD SCORE

Range

0 – 100

────────────────────────────

INPUTS

Performance Stability

────────────────────────────

Risk Stability

────────────────────────────

Parameter Stability

────────────────────────────

Regime Stability

────────────────────────────

Generalization Quality

────────────────────────────

PASS THRESHOLDS

Minimum Trade Count

500

────────────────────────────

Positive Expectancy

Required

────────────────────────────

Profit Factor

≥ 1.20

────────────────────────────

Drawdown

Within Limits

────────────────────────────

Walk Forward Score

≥ 75

────────────────────────────

GENERALIZATION ENGINE

Purpose

Measure transferability to unseen data.

────────────────────────────

Inputs

Training Performance

Validation Performance

Performance Delta

Risk Delta

────────────────────────────

Output

Generalization Score

0 – 100

────────────────────────────

OVERFITTING DETECTION ENGINE

Purpose

Identify unstable strategies.

────────────────────────────

Indicators

Large Performance Collapse

────────────────────────────

Parameter Fragility

────────────────────────────

Regime Dependency

────────────────────────────

Validation Failure Clustering

────────────────────────────

Output

Overfitting Risk Score

0 – 100

────────────────────────────

OVERFITTING TIERS

LOW

0 – 25

────────────────────────────

MODERATE

26 – 50

────────────────────────────

HIGH

51 – 75

────────────────────────────

CRITICAL

76 – 100

────────────────────────────

REGIME VALIDATION ENGINE

Required Regimes

TRENDING_BULLISH

────────────────────────────

TRENDING_BEARISH

────────────────────────────

RANGING

────────────────────────────

EXPANSION

────────────────────────────

TRANSITION

────────────────────────────

Requirement

Performance must be evaluated in every regime represented within the validation dataset.

────────────────────────────

PARAMETER STABILITY ENGINE

Purpose

Ensure optimization results are not fragile.

────────────────────────────

Requirement

Minor parameter changes must not produce catastrophic performance changes.

────────────────────────────

Output

Parameter Stability Score

0 – 100

────────────────────────────

PROMOTION OUTCOMES

PASS

────────────────────────────

CONDITIONAL PASS

────────────────────────────

RETEST REQUIRED

────────────────────────────

FAIL

────────────────────────────

AUDIT REQUIREMENTS

Every Walk Forward Run Must Retain

Run ID

Dataset Version

Dataset Hash

Strategy Version

Engine Versions

Window Definitions

Optimization Parameters

Performance Results

Timestamp

────────────────────────────

EVENT REGISTRY

WF_STARTED

────────────────────────────

WF_WINDOW_COMPLETED

────────────────────────────

WF_PASSED

────────────────────────────

WF_FAILED

────────────────────────────

OVERFITTING_DETECTED

────────────────────────────

PROMOTION_GRANTED

────────────────────────────

PROMOTION_DENIED

────────────────────────────

INSTITUTIONAL UPGRADE

REGIME DRIFT ANALYSIS

Purpose

Detect deterioration caused by market evolution.

────────────────────────────

Measure

Performance Across Sequential Validation Windows

────────────────────────────

Output

Regime Drift Score

0 – 100

────────────────────────────

FAILURE CONDITIONS

Future Leakage

────────────────────────────

Optimization On Validation Data

────────────────────────────

Missing Dataset Version

────────────────────────────

Missing Dataset Hash

────────────────────────────

Corrupted Results

────────────────────────────

Any Failure

Validation Invalid

────────────────────────────

SUCCESS CRITERIA

100% Reproducible

100% Auditable

0 Future Leakage

0 Data Leakage

0 Validation Contamination

Research Grade

Institutional Grade

────────────────────────────

VERSION

walk_forward_validation_framework_v1

STATUS

APPROVED FOR IMPLEMENTATION

────────────────────────────

END OF DOCUMENT
