ALPHAMOBILE QUANT OS — FILL MODEL

PURPOSE

Define the canonical fill simulation model used throughout AlphaMobile Quant OS.

The Fill Model determines how execution requests become filled trades.

Its purpose is to provide realistic, reproducible, and auditable trade fills.

No execution may bypass this framework.

────────────────────────────

MISSION

Simulate realistic fills.

Prevent optimistic assumptions.

Support future migration to paper and live trading.

Maintain deterministic behavior.

────────────────────────────

CORE PRINCIPLES

Principle 1

Signal generation is not execution.

────────────────────────────

Principle 2

Execution is not a fill.

────────────────────────────

Principle 3

Every fill requires assumptions.

────────────────────────────

Principle 4

Assumptions must be explicit.

────────────────────────────

Principle 5

Conservative assumptions are preferred.

────────────────────────────

ARCHITECTURAL POSITION

Signal Engine

↓

Execution Simulation Engine

↓

Fill Model

↓

Position Engine

↓

Performance Analytics

────────────────────────────

FILL OBJECT

Required Fields

fill_id

execution_id

signal_id

asset_id

timeframe_id

fill_timestamp

fill_price

fill_quantity

fill_type

dataset_version

strategy_version

────────────────────────────

SUPPORTED FILL TYPES

ENTRY_FILL

────────────────────────────

EXIT_FILL

────────────────────────────

PARTIAL_FILL

Reserved For Future

────────────────────────────

DEFAULT ENTRY FILL POLICY

Signal Generated

On Candle N

────────────────────────────

Earliest Fill

Candle N+1 Open

────────────────────────────

Fill Price

Next Candle Open

────────────────────────────

No Same-Candle Fill

Permitted

────────────────────────────

LONG ENTRY MODEL

Fill Price

Next Candle Open

────────────────────────────

SHORT ENTRY MODEL

Fill Price

Next Candle Open

────────────────────────────

DEFAULT EXIT FILL POLICY

Stop Loss

Triggered At Threshold

Filled At Conservative Price

────────────────────────────

Take Profit

Triggered At Threshold

Filled At Conservative Price

────────────────────────────

Time Exit

Filled At Next Candle Open

────────────────────────────

Signal Invalidation Exit

Filled At Next Candle Open

────────────────────────────

REGIME EXIT

Filled At Next Candle Open

────────────────────────────

INTRABAR EXECUTION POLICY

Version 1

Disabled

────────────────────────────

Reason

Candle Data Only

────────────────────────────

Tick-Level Simulation

Future Phase

────────────────────────────

PRICE PRIORITY RULE

If Open Price Available

Use Open Price

────────────────────────────

Otherwise

Use Conservative Estimate

────────────────────────────

FILL VALIDATION ENGINE

Before Recording Fill

Verify Execution Exists

Verify Signal Exists

Verify Dataset Exists

Verify Timestamp Order

Verify Position State

────────────────────────────

Any Failure

Fill Rejected

────────────────────────────

FILL QUALITY MODEL

PURPOSE

Measure realism of fills.

────────────────────────────

METRICS

Price Deviation

Fill Delay

Execution Accuracy

Fill Consistency

────────────────────────────

FILL QUALITY SCORE

Range

0 – 100

────────────────────────────

FILL CONSISTENCY RULE

Identical Inputs

Must Produce

Identical Fill Outputs

────────────────────────────

Otherwise

Backtest Certification Revoked

────────────────────────────

POSITION LINKAGE

Every Fill Must Reference

Position ID

Signal ID

Execution ID

────────────────────────────

FILL EVENT REGISTRY

ENTRY_FILL_CREATED

────────────────────────────

ENTRY_FILL_COMPLETED

────────────────────────────

EXIT_FILL_CREATED

────────────────────────────

EXIT_FILL_COMPLETED

────────────────────────────

FILL_REJECTED

────────────────────────────

FILL AUDIT REQUIREMENTS

Every Fill Must Retain

Dataset Version

Dataset Hash

Strategy Version

Signal Version

Execution Version

Fill Version

Timestamp

Price

Reason Codes

────────────────────────────

RESEARCH OUTPUTS

fill_count

entry_fill_count

exit_fill_count

average_fill_price

average_fill_delay

fill_quality_score

fill_rejection_rate

────────────────────────────

FAILURE CONDITIONS

Future Leakage

────────────────────────────

Missing Execution

────────────────────────────

Missing Signal

────────────────────────────

Invalid Timestamp

────────────────────────────

Invalid Dataset

────────────────────────────

Any Failure

Backtest Invalid

────────────────────────────

GOVERNANCE REQUIREMENTS

Fill assumptions may only be modified through:

Research

Validation

Governance Approval

────────────────────────────

INSTITUTIONAL CONSERVATISM RULE

When multiple fill outcomes are possible:

Use the least favorable realistic outcome.

────────────────────────────

Example

Optimistic Fill

100.00

────────────────────────────

Conservative Fill

100.05

────────────────────────────

Selected Fill

100.05

────────────────────────────

SUCCESS CRITERIA

100% Reproducible

100% Auditable

0 Future Leakage

0 Same-Candle Fills

Deterministic Outcomes

Institutional Grade

────────────────────────────

VERSION

fill_model_v1

STATUS

APPROVED FOR IMPLEMENTATION

────────────────────────────

END OF DOCUMENT
