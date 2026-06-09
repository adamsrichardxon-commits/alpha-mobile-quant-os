ALPHAMOBILE QUANT OS — FEE MODEL

PURPOSE

Define the canonical fee framework used throughout AlphaMobile Quant OS.

The Fee Model calculates all execution-related costs and ensures that research results reflect realistic net performance.

No backtest, simulation, or execution study may bypass this framework.

────────────────────────────

MISSION

Model trading costs.

Prevent profit inflation.

Ensure realistic performance evaluation.

Support future exchange integration.

────────────────────────────

CORE PRINCIPLES

Principle 1

Every trade has a cost.

────────────────────────────

Principle 2

Fees reduce edge.

────────────────────────────

Principle 3

Net performance matters.

────────────────────────────

Principle 4

Fee assumptions must be explicit.

────────────────────────────

Principle 5

Fee calculations must be reproducible.

────────────────────────────

ARCHITECTURAL POSITION

Signal Engine

↓

Execution Simulation Engine

↓

Fill Model

↓

Slippage Model

↓

Fee Model

↓

Position Engine

↓

Performance Analytics

────────────────────────────

FEE TYPES

TYPE 1

ENTRY FEE

────────────────────────────

TYPE 2

EXIT FEE

────────────────────────────

TYPE 3

ROUND-TRIP FEE

────────────────────────────

TYPE 4

FUNDING FEE

Future Phase

────────────────────────────

TYPE 5

BORROW FEE

Future Phase

────────────────────────────

VERSION 1 SCOPE

Spot Trading Only

────────────────────────────

DEFAULT EXCHANGE

BINANCE SPOT

────────────────────────────

FEE POLICY

Fees Enabled

Mandatory

────────────────────────────

Zero Fees

Forbidden

────────────────────────────

FEE CONFIGURATION

Maker Fee

Configurable

────────────────────────────

Taker Fee

Configurable

────────────────────────────

Default Execution Type

Taker

────────────────────────────

Reason

Conservative Assumption

────────────────────────────

FEE CALCULATION ENGINE

ENTRY FEE

Position Value

×

Fee Rate

────────────────────────────

EXIT FEE

Position Value

×

Fee Rate

────────────────────────────

ROUND-TRIP FEE

Entry Fee

+ 

Exit Fee

────────────────────────────

POSITION VALUE

Quantity

×

Execution Price

────────────────────────────

NET PNL FORMULA

Gross PnL

−

Slippage Cost

−

Fees

=

Net PnL

────────────────────────────

FEE APPLICATION ORDER

Step 1

Calculate Gross PnL

────────────────────────────

Step 2

Apply Slippage

────────────────────────────

Step 3

Apply Fees

────────────────────────────

Step 4

Calculate Net PnL

────────────────────────────

This Order Is Mandatory

────────────────────────────

FEE STATE MODEL

NONE

Forbidden

────────────────────────────

LOW

────────────────────────────

NORMAL

────────────────────────────

HIGH

────────────────────────────

EXTREME

────────────────────────────

FEE IMPACT ANALYSIS

Purpose

Measure cost burden.

────────────────────────────

Metrics

Fee Cost

Fee Ratio

Cost Per Trade

Cost Per Signal

Net Edge Reduction

────────────────────────────

FEE IMPACT SCORE

Range

0 – 100

────────────────────────────

EXECUTION COST ENGINE

Purpose

Measure total execution friction.

────────────────────────────

Formula

Total Cost

=

Slippage Cost

+ 

Fee Cost

────────────────────────────

Research Metric

Execution Friction Score

────────────────────────────

AUDIT REQUIREMENTS

Every Fee Event Must Retain

Fee Event ID

Execution ID

Signal ID

Position ID

Fee Type

Fee Rate

Fee Amount

Dataset Version

Strategy Version

Timestamp

────────────────────────────

FEE EVENT REGISTRY

ENTRY_FEE_APPLIED

────────────────────────────

EXIT_FEE_APPLIED

────────────────────────────

ROUND_TRIP_FEE_CALCULATED

────────────────────────────

FEE_CONFIGURATION_CHANGED

────────────────────────────

FEE_IMPACT_RECORDED

────────────────────────────

RESEARCH OUTPUTS

total_fees

average_fee_per_trade

fee_distribution

fee_impact_score

execution_friction_score

gross_pnl

net_pnl

────────────────────────────

VALIDATION RULES

Fees Enabled

Mandatory

────────────────────────────

Fee Rates Defined

Mandatory

────────────────────────────

Negative Fees

Forbidden

────────────────────────────

Future Leakage

Forbidden

────────────────────────────

Any Failure

Backtest Invalid

────────────────────────────

GOVERNANCE REQUIREMENTS

Fee schedules may only be changed through:

Research

Validation

Governance Approval

────────────────────────────

FEE VERSIONING

Every Research Run Must Store

Fee Model Version

Fee Configuration Version

Exchange Configuration Version

────────────────────────────

INSTITUTIONAL CONSERVATISM RULE

When multiple fee outcomes are possible:

Use the highest realistic fee estimate.

────────────────────────────

Example

Possible Fee Rates

0.05%

0.075%

0.10%

────────────────────────────

Selected Rate

0.10%

────────────────────────────

SUCCESS CRITERIA

100% Reproducible

100% Auditable

0 Zero-Fee Backtests

0 Hidden Costs

Net Performance Only

Institutional Grade

────────────────────────────

VERSION

fee_model_v1

STATUS

APPROVED FOR IMPLEMENTATION

────────────────────────────

END OF DOCUMENT
