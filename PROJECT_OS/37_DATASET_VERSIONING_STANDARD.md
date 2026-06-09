ALPHAMOBILE QUANT OS — DATASET VERSIONING STANDARD

PURPOSE

Guarantee research reproducibility.

Every backtest result must be traceable to a specific dataset version.

────────────────────────────

CORE PRINCIPLE

Research must be reproducible.

────────────────────────────

DATASET FORMAT

DATASET_V1

DATASET_V2

DATASET_V3

...

────────────────────────────

DATASET COMPONENTS

Asset

Timeframe

Date Range

Collector Version

Validation Status

Creation Timestamp

────────────────────────────

IMMUTABILITY RULE

Published datasets may not be modified.

New datasets require a new version.

────────────────────────────

RESEARCH RULE

Every research result must record:

Dataset Version

Strategy Version

Research Timestamp

────────────────────────────

BACKTEST RULE

Every backtest must reference a dataset version.

Backtests without dataset versions are invalid.

────────────────────────────

AUDIT RULE

All datasets must remain reproducible.

────────────────────────────

END OF DOCUMENT
