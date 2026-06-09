ALPHAMOBILE QUANT OS — BACKTESTING ARCHITECTURE

PURPOSE

Define the canonical backtesting framework used throughout AlphaMobile Quant OS.

The Backtesting Architecture governs how historical simulations are executed, measured, validated, and audited.

No research result may be considered valid unless produced through this framework.

────────────────────────────

MISSION

Produce realistic simulations.

Eliminate research bias.

Prevent false discoveries.

Ensure reproducibility.

Ensure auditability.

────────────────────────────

CORE PRINCIPLES

Principle 1

Backtests are experiments.

Not predictions.

────────────────────────────

Principle 2

Every backtest must be reproducible.

────────────────────────────

Principle 3

Every result must be auditable.

────────────────────────────

Principle 4

Future leakage is prohibited.

────────────────────────────

Principle 5

Realism is preferred over optimism.

────────────────────────────

ARCHITECTURE OVERVIEW

Historical Dataset

↓

Event Engine

↓

Signal Engine

↓

Execution Simulator

↓

Position Engine

↓

Risk Engine

↓

Performance Engine

↓

Research Reports

────────────────────────────

BACKTEST MODES

MODE 1

Historical Replay

────────────────────────────

MODE 2

Walk Forward

────────────────────────────

MODE 3

Out Of Sample

────────────────────────────

MODE 4

Monte Carlo

────────────────────────────

MODE 5

Robustness Testing

────────────────────────────

DEFAULT MODE

Historical Replay

────────────────────────────

SIMULATION UNIT

Primary Unit

Candle Event

────────────────────────────

Future Support

Tick Event

────────────────────────────

EVENT PROCESSING MODEL

For Every Candle

Update Market State

↓

Update Structure

↓

Update Liquidity

↓

Update Regime

↓

Update Confluence

↓

Generate Signals

↓

Execute Orders

↓

Update Positions

↓

Update Risk

↓

Record Metrics

────────────────────────────

EVENT ORDER

Mandatory

Must Never Change

────────────────────────────

LOOKAHEAD PROTECTION

Future Candles

Forbidden

────────────────────────────

Future Signals

Forbidden

────────────────────────────

Future Regime Information

Forbidden

────────────────────────────

Future Liquidity Information

Forbidden

────────────────────────────

Any Violation

Backtest Invalid

────────────────────────────

DATA REQUIREMENTS

Dataset Certification

GOLD

────────────────────────────

Dataset Version

Required

────────────────────────────

Research Dataset Hash

Required

────────────────────────────

STRATEGY REQUIREMENTS

Strategy Version

Required

────────────────────────────

Signal Engine Version

Required

────────────────────────────

Validation Policy Version

Required

────────────────────────────

RESEARCH RUN IDENTIFICATION

Every Backtest Receives

Unique Run ID

────────────────────────────

Required Metadata

Dataset Version

Strategy Version

Engine Versions

Execution Timestamp

Researcher Identity

────────────────────────────

EXECUTION MODEL

Market Order

Supported

────────────────────────────

Limit Order

Future Phase

────────────────────────────

Stop Order

Future Phase

────────────────────────────

POSITION MODEL

Flat

────────────────────────────

Long

────────────────────────────

Short

────────────────────────────

No Partial Positions

Version 1

────────────────────────────

RISK MODEL

Position Risk

Mandatory

────────────────────────────

Portfolio Risk

Future Phase

────────────────────────────

Drawdown Tracking

Mandatory

────────────────────────────

Risk Limits

Mandatory

────────────────────────────

SLIPPAGE MODEL

Default

Enabled

────────────────────────────

Slippage Assumption

Conservative

────────────────────────────

No Zero-Slippage Backtests

Allowed

────────────────────────────

FEE MODEL

Exchange Fees

Mandatory

────────────────────────────

Fee-Free Backtests

Forbidden

────────────────────────────

PERFORMANCE ENGINE

Required Metrics

Trade Count

Win Rate

Profit Factor

Expectancy

Sharpe Ratio

Sortino Ratio

Max Drawdown

Recovery Factor

Risk Of Ruin

Net Return

────────────────────────────

EQUITY CURVE ENGINE

Required

────────────────────────────

Peak Tracking

Required

────────────────────────────

Drawdown Tracking

Required

────────────────────────────

RESEARCH REPORTS

Required Outputs

Backtest Summary

Trade Distribution

Equity Curve

Drawdown Analysis

Regime Analysis

Signal Analysis

Risk Analysis

────────────────────────────

FAILURE CONDITIONS

Future Leakage

────────────────────────────

Missing Dataset Version

────────────────────────────

Missing Strategy Version

────────────────────────────

Corrupted Dataset

────────────────────────────

Invalid Engine Version

────────────────────────────

RESULT CERTIFICATION

CERTIFIED

All Requirements Met

────────────────────────────

REJECTED

Any Requirement Violated

────────────────────────────

BACKTEST GOVERNANCE

All Backtests Must Store

Run ID

Dataset Version

Dataset Hash

Strategy Version

Engine Versions

Performance Metrics

Research Timestamp

────────────────────────────

SUCCESS CRITERIA

100% Reproducible

100% Auditable

0 Future Leakage

0 Repainting

Research Grade

Institutional Grade

────────────────────────────

VERSION

backtesting_architecture_v1

STATUS

APPROVED FOR IMPLEMENTATION

────────────────────────────

END OF DOCUMENT
