ALPHAMOBILE QUANT OS — SIGNAL VALIDATION POLICY

PURPOSE

Define the mandatory validation requirements that all trading signals must satisfy before promotion into research, simulation, paper trading, or execution environments.

This policy governs signal credibility.

No signal may bypass this framework.

────────────────────────────

MISSION

Prevent false discoveries.

Prevent overfitting.

Prevent strategy drift.

Ensure statistical validity.

Ensure reproducibility.

────────────────────────────

CORE PRINCIPLES

Principle 1

A signal hypothesis is not evidence.

────────────────────────────

Principle 2

Backtest performance is not proof.

────────────────────────────

Principle 3

Validation requires multiple independent tests.

────────────────────────────

Principle 4

Failure is informative.

────────────────────────────

Principle 5

Signals must earn promotion.

────────────────────────────

SIGNAL LIFECYCLE

IDEA

↓

SPECIFIED

↓

IMPLEMENTED

↓

BACKTESTED

↓

VALIDATED

↓

PAPER TESTED

↓

EXECUTION ELIGIBLE

────────────────────────────

VALIDATION TIERS

TIER 0

UNVALIDATED

────────────────────────────

TIER 1

BACKTEST VALIDATED

────────────────────────────

TIER 2

ROBUSTNESS VALIDATED

────────────────────────────

TIER 3

PAPER TRADING VALIDATED

────────────────────────────

TIER 4

EXECUTION ELIGIBLE

────────────────────────────

TIER 5

PRODUCTION CERTIFIED

────────────────────────────

TIER 1 REQUIREMENTS

BACKTEST VALIDATION

Minimum Sample Size

500 Signals

────────────────────────────

Minimum Market Coverage

Multiple Regimes

────────────────────────────

Minimum Time Coverage

12 Months

────────────────────────────

Data Certification

GOLD Only

────────────────────────────

TIER 2 REQUIREMENTS

ROBUSTNESS VALIDATION

Must Pass

Parameter Stability Tests

────────────────────────────

Regime Stability Tests

────────────────────────────

Time Slice Tests

────────────────────────────

Monte Carlo Tests

────────────────────────────

Sensitivity Analysis

────────────────────────────

TIER 3 REQUIREMENTS

PAPER TRADING VALIDATION

Minimum Duration

60 Days

────────────────────────────

Minimum Trades

100

────────────────────────────

Execution Simulation Required

────────────────────────────

Slippage Included

────────────────────────────

Fees Included

────────────────────────────

TIER 4 REQUIREMENTS

EXECUTION ELIGIBLE

Must Pass

Tier 1

Tier 2

Tier 3

────────────────────────────

Risk Approval Required

────────────────────────────

Governance Approval Required

────────────────────────────

TIER 5 REQUIREMENTS

PRODUCTION CERTIFIED

Minimum Live Observation

90 Days

────────────────────────────

Performance Stability Confirmed

────────────────────────────

No Critical Failure Events

────────────────────────────

STATISTICAL VALIDATION

REQUIRED METRICS

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

Maximum Drawdown

────────────────────────────

Recovery Factor

────────────────────────────

Risk of Ruin

────────────────────────────

STATISTICAL THRESHOLDS

Minimum Trades

500

────────────────────────────

Profit Factor

«1.20»

────────────────────────────

Expectancy

Positive

────────────────────────────

Maximum Drawdown

Within Risk Limits

────────────────────────────

Risk of Ruin

Acceptable

────────────────────────────

OVERFITTING CONTROLS

Required

Walk Forward Validation

────────────────────────────

Out Of Sample Validation

────────────────────────────

Monte Carlo Simulation

────────────────────────────

Parameter Sensitivity Testing

────────────────────────────

REJECTION CONDITIONS

Future Leakage

────────────────────────────

Repainting

────────────────────────────

Data Contamination

────────────────────────────

Insufficient Sample Size

────────────────────────────

Parameter Fragility

────────────────────────────

Regime Dependency

────────────────────────────

RESEARCH GOVERNANCE

Every validation study must retain:

Dataset Version

Strategy Version

Engine Versions

Validation Version

Research Timestamp

────────────────────────────

VALIDATION EVENT REGISTRY

BACKTEST_PASS

────────────────────────────

BACKTEST_FAIL

────────────────────────────

ROBUSTNESS_PASS

────────────────────────────

ROBUSTNESS_FAIL

────────────────────────────

PAPER_PASS

────────────────────────────

PAPER_FAIL

────────────────────────────

PROMOTION_GRANTED

────────────────────────────

PROMOTION_DENIED

────────────────────────────

SIGNAL PROMOTION POLICY

Signals may only advance one tier at a time.

Tier skipping prohibited.

────────────────────────────

SUCCESS CRITERIA

100% Reproducible

100% Auditable

0 Future Leakage

0 Repainting

0 Unvalidated Promotions

────────────────────────────

VERSION

signal_validation_policy_v1

STATUS

APPROVED FOR IMPLEMENTATION

────────────────────────────

END OF DOCUMENT
