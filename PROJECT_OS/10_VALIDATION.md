ALPHAMOBILE QUANT OS — VALIDATION FRAMEWORK

PURPOSE

Validation exists to reject weak systems.

The burden of proof is on the strategy.

────────────────────────────

TIER SYSTEM

Tier 1

Minimum:
100 trades

Purpose:
Early exploration

Cannot be used for deployment decisions.

────────────────────────────

Tier 2

Minimum:
500 trades

Purpose:
Preliminary evidence

Cannot be considered production ready.

────────────────────────────

Tier 3

Minimum:
1000 trades

Purpose:
Serious evaluation

Minimum acceptable level.

────────────────────────────

Tier 4

Minimum:
3000 trades

Purpose:
Institutional confidence

Preferred level.

────────────────────────────

BENCHMARK REQUIREMENT

Every strategy must outperform:

Benchmark A:
Random Entry

Benchmark B:
Simple Trend Following

Benchmark C:
Risk-adjusted Hold Strategy

Failure against benchmarks:

AUTOMATIC REJECTION

────────────────────────────

PROFITABILITY REQUIREMENTS

Expectancy:
Positive

Profit Factor:
Minimum 1.20

Preferred:
1.50+

Average R Multiple:
Positive

────────────────────────────

RISK REQUIREMENTS

Maximum Drawdown:
≤ 20%

Risk per Trade:
≤ 1%

Position Limits:
Enforced

────────────────────────────

ROBUSTNESS REQUIREMENTS

Must pass:

- Out-of-sample testing
- Walk-forward testing
- Regime testing
- Stress testing

Failure of any test:

REJECTION

────────────────────────────

OVERFITTING DETECTION

Automatic rejection if:

- parameter sensitivity is excessive
- edge disappears in unseen data
- performance depends on isolated trade clusters

────────────────────────────

APPROVAL GATES

Gate 1:
Research Approval

Gate 2:
Backtest Approval

Gate 3:
Validation Approval

Gate 4:
Paper Trading Approval

Gate 5:
Automation Approval

Each gate requires explicit pass status.

────────────────────────────

FINAL RULE

A strategy is considered INVALID until proven VALID.

Not the reverse.

END OF DOCUMENT
