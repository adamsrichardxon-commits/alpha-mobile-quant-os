PROJECT CONSTRAINTS

1. BUDGET CONSTRAINT
- Total budget: $0
- No paid APIs allowed
- No VPS or paid servers allowed

2. HARDWARE CONSTRAINT
- System must run on mobile phone (Samsung Galaxy A04)
- No heavy local computation allowed

3. INFRASTRUCTURE CONSTRAINT
- Only free-tier services allowed:
  - GitHub (storage + version control)
  - Supabase free tier (database + functions)
  - Hugging Face Spaces (optional compute)
  - Telegram bot API (control interface)
  - Binance Testnet (execution environment)

4. MARKET CONSTRAINT
- Asset: BTC/USDT only
- Timeframe: 5-minute data only
- No multi-asset expansion allowed without explicit validation

5. STRATEGY CONSTRAINT
- Only rule-based strategies allowed (no guessing)
- No discretionary trading logic
- Every signal must be deterministic and reproducible

6. RISK CONSTRAINT
- Max risk per trade: 1%
- Max open positions: 1
- Stop loss is mandatory for every trade
- No trade without predefined invalidation

7. VALIDATION CONSTRAINT
- No live trading until:
  - 500+ backtested trades
  - Positive expectancy proven
  - Risk metrics validated

8. SYSTEM BEHAVIOR CONSTRAINT
- System must tolerate downtime of external services
- System must recover state automatically
- No assumption of 24/7 uptime

9. PROHIBITED ACTIONS
- No live trading before validation
- No adding features without documentation in Project OS
- No changing architecture without updating DECISIONS file
