SYSTEM BOOTSTRAP FILE

This file is used to reconstruct the entire system from scratch at any time.

Purpose:
Ensure system recovery, continuity, and full re-initialization capability.

If ALL other files are lost or corrupted, this file is sufficient to rebuild the system.

────────────────────────────

1. SYSTEM IDENTITY

We are building a BTC/USDT automated trading research system.

Core principle:
No trading without validated statistical edge.

────────────────────────────

2. SYSTEM STRUCTURE

PROJECT_OS contains the following modules:

- 01_MISSION.md → defines system goal
- 02_CONSTRAINTS.md → defines hard limits
- 03_ARCHITECTURE.md → defines system design
- 04_DECISIONS.md → tracks all system decisions
- 05_ROADMAP.md → defines execution phases
- 06_PROGRESS.md → tracks current state
- 07_RISK_REGISTER.md → tracks system risks
- 08_BACKLOG.md → stores future ideas
- 09_RESEARCH_LOG.md → stores experiments
- 10_VALIDATION.md → defines pass/fail rules
- 11_ASSUMPTIONS.md → tracks hidden assumptions
- 12_BOOTSTRAP.md → system recovery file
- 13_TECHNICAL_DEBT.md → tracks system flaws

────────────────────────────

3. CORE EXECUTION FLOW

Data → Signal Engine → Risk Engine → Execution Engine → Logging

No step can bypass validation or risk control.

────────────────────────────

4. CRITICAL RULES

- No live trading without validation
- No strategy without research evidence
- No execution without risk approval
- No assumption without explicit documentation

────────────────────────────

5. RECOVERY INSTRUCTIONS

If system state is lost:

Step 1:
Recreate PROJECT_OS structure

Step 2:
Restore files in numerical order

Step 3:
Load decisions from 04_DECISIONS.md

Step 4:
Check progress in 06_PROGRESS.md

Step 5:
Resume from ROADMAP phase

────────────────────────────

6. MINIMUM REQUIRED KNOWLEDGE

To operate the system, only these are required:

- System structure (PROJECT_OS files)
- Current progress state
- Validated strategies only
- Risk rules

No external memory is required.

────────────────────────────

FINAL PRINCIPLE

This system is designed to be fully recoverable, deterministic, and independent of any single AI session or memory state.
