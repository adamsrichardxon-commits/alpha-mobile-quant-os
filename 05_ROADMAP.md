SYSTEM ROADMAP

This document defines the step-by-step execution plan for building the BTC/USDT trading research system.

It ensures structured progression from research → validation → automation.

────────────────────────────

PHASE 1 — SYSTEM SETUP (PROJECT OS)
Goal: Build system memory and structure

Tasks:
- Create PROJECT_OS repository
- Define all system files
- Establish governance rules
- Define architecture

Output:
- Fully structured PROJECT_OS
- System governance active

Status: IN PROGRESS

────────────────────────────

PHASE 2 — DATA INFRASTRUCTURE
Goal: Establish reliable market data pipeline

Tasks:
- Connect Binance API (testnet first)
- Store BTC/USDT 5-minute OHLCV data
- Set up Supabase database tables
- Validate data consistency

Output:
- Clean historical dataset
- Real-time data feed

Status: NOT STARTED

────────────────────────────

PHASE 3 — SIGNAL ENGINE v1
Goal: Build first rule-based detection system

Tasks:
- Define liquidity sweep logic
- Define market structure shift rules
- Define entry conditions
- Define invalidation rules

Output:
- Signal generation logic (no trading yet)

Status: NOT STARTED

────────────────────────────

PHASE 4 — BACKTESTING SYSTEM
Goal: Test strategy on historical data

Tasks:
- Build backtest engine (Python later)
- Run 500+ trade simulations
- Measure expectancy
- Measure drawdown and win rate

Output:
- Statistical performance report

Status: NOT STARTED

────────────────────────────

PHASE 5 — VALIDATION PHASE
Goal: Confirm strategy robustness

Tasks:
- Out-of-sample testing
- Walk-forward validation
- Regime testing
- Anti-overfitting checks

Output:
- Validation report
- Strategy approval or rejection

Status: NOT STARTED

────────────────────────────

PHASE 6 — PAPER TRADING
Goal: Simulate real-time execution without risk

Tasks:
- Connect signal engine to simulated execution
- Log all trades
- Monitor live conditions

Output:
- Live performance data (simulated)

Status: NOT STARTED

────────────────────────────

PHASE 7 — AUTOMATION (TESTNET)
Goal: Fully automated trading on Binance Testnet

Tasks:
- Connect execution layer
- Enable order placement
- Enable stop-loss and take-profit
- Add Telegram monitoring

Output:
- Fully automated testnet bot

Status: NOT STARTED

────────────────────────────

PHASE 8 — OPTIMIZATION
Goal: Improve only validated strategy components

Tasks:
- Analyze performance data
- Remove weak components
- Improve robust signals only

Output:
- Optimized strategy version

Status: NOT STARTED

────────────────────────────

FINAL RULE

No phase may begin until previous phase is validated and completed.

No shortcuts allowed.

No live trading until Phase 5 is passed successfully.
