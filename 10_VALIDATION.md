SYSTEM VALIDATION CRITERIA

This file defines the EXACT conditions a strategy must satisfy before it is considered valid.

Purpose:
Prevent weak, overfitted, or random strategies from entering live or automated trading.

No strategy can bypass these rules.

────────────────────────────

1. MINIMUM SAMPLE REQUIREMENT

- At least 500 completed trades required
- Trades must be from historical backtesting AND/OR forward testing
- Small sample results are INVALID

────────────────────────────

2. PROFITABILITY REQUIREMENT

A strategy is ONLY VALID if:

- Net expectancy > 0
- Profit Factor ≥ 1.2 minimum
- Consistent performance across multiple market conditions

────────────────────────────

3. RISK REQUIREMENT

- Maximum drawdown must be ≤ 20%
- No uncontrolled loss streaks
- Each trade must respect fixed risk (1% max)

────────────────────────────

4. ROBUSTNESS REQUIREMENT

Strategy must pass:

- Out-of-sample testing
- Walk-forward validation
- Multiple market regime testing (trend, range, volatility spikes)

────────────────────────────

5. STABILITY REQUIREMENT

- Performance must not rely on a single market condition
- No single trade cluster may dominate profits
- Results must be reproducible

────────────────────────────

6. OVERFITTING PROTECTION

A strategy is INVALID if:

- It only works on historical data but fails in unseen data
- It depends on overly specific parameter tuning
- It breaks under minor market variation

────────────────────────────

7. APPROVAL GATES

A strategy moves forward ONLY IF:

Phase 1: Research → COMPLETE
Phase 2: Backtesting → PASS
Phase 3: Forward Testing → PASS
Phase 4: Validation Metrics → PASS

If ANY phase fails → strategy is REJECTED

────────────────────────────

FINAL RULE

No live trading or automation is allowed unless ALL validation criteria are satisfied.

Failure to meet validation = automatic rejection, regardless of perceived potential.
