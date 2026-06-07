SYSTEM ARCHITECTURE

This document defines how the BTC/USDT trading system is structured.

It is NOT strategy logic.
It is NOT trading rules.

It defines system components and how they interact.

────────────────────────────

1. CORE SYSTEM OVERVIEW

The system is composed of 5 main layers:

A. DATA LAYER
B. SIGNAL LAYER
C. RISK LAYER
D. EXECUTION LAYER
E. CONTROL & MONITORING LAYER

────────────────────────────

2. DATA LAYER

Purpose:
Collect and store market data.

Components:
- Binance API (market data source)
- Supabase database (storage)

Responsibilities:
- Store OHLCV 5-minute BTC/USDT data
- Maintain historical dataset
- Ensure data integrity

────────────────────────────

3. SIGNAL LAYER

Purpose:
Generate trade signals using defined rules.

Components:
- Signal Engine (Python logic later)
- Strategy rules (stored in Project OS)

Responsibilities:
- Detect liquidity conditions
- Identify market structure shifts
- Generate entry signals

Important:
No trade execution happens here.

────────────────────────────

4. RISK LAYER

Purpose:
Control exposure and protect capital.

Rules:
- Max 1% risk per trade
- Max 1 open position
- Mandatory stop-loss
- Invalid signal rejection

Responsibilities:
- Approve or reject signals
- Calculate position size
- Enforce risk limits

────────────────────────────

5. EXECUTION LAYER

Purpose:
Send trades to Binance Testnet.

Components:
- Binance API
- Order execution script (future implementation)

Responsibilities:
- Place market/limit orders
- Set stop loss and take profit
- Confirm order execution

Important:
No strategy logic here.

────────────────────────────

6. CONTROL & MONITORING LAYER

Purpose:
System management and user control.

Components:
- Telegram bot (control interface)
- GitHub (state tracking)
- Supabase logs (event history)

Responsibilities:
- Show system status
- Allow manual kill switch
- Display open trades
- Log all system activity

────────────────────────────

7. SYSTEM FLOW (SIMPLIFIED)

Market Data → Data Layer → Signal Layer → Risk Layer → Execution Layer → Binance Testnet

All events are logged to Supabase.

Telegram monitors everything.

────────────────────────────

8. DESIGN PRINCIPLE

- Each layer must be independent
- Signal logic must never execute trades directly
- Risk layer must always approve trades
- Execution layer must not generate signals

This separation prevents system failure and overfitting.
