ALPHAMOBILE QUANT OS — COLLECTOR TECHNICAL ARCHITECTURE

PURPOSE

Define the technical architecture of the market data collection system.

Establish component boundaries, interfaces, responsibilities, data flow, and implementation standards.

This document serves as the engineering blueprint for all collector development.

────────────────────────────

ARCHITECTURE PRINCIPLE

Single Responsibility.

Each component performs one function and one function only.

────────────────────────────

SYSTEM OVERVIEW

Exchange
↓
Backfill Engine
↓
Validation Engine
↓
Database Writer
↓
Supabase

and

Exchange
↓
Incremental Collector
↓
Validation Engine
↓
Database Writer
↓
Supabase

────────────────────────────

CORE COMPONENTS

COMPONENT-001

Exchange Client

Purpose

Communicate with Binance APIs.

Responsibilities

Request Market Data

Handle Rate Limits

Handle Retries

Normalize Responses

Non-Responsibilities

Validation

Database Writes

Research Logic

────────────────────────────

COMPONENT-002

Backfill Engine

Purpose

Load historical candles.

Responsibilities

Historical Requests

Checkpoint Management

Batch Processing

Progress Tracking

Non-Responsibilities

Signal Generation

Strategy Logic

────────────────────────────

COMPONENT-003

Incremental Collector

Purpose

Collect newly closed candles.

Responsibilities

Scheduled Collection

Closed Candle Detection

Gap Detection

Continuous Operation

Non-Responsibilities

Historical Backfill

Research Logic

────────────────────────────

COMPONENT-004

Validation Engine

Purpose

Verify data integrity.

Responsibilities

Timestamp Validation

OHLC Validation

Volume Validation

Duplicate Detection

Gap Detection

Data Certification

Non-Responsibilities

Exchange Communication

Database Writes

────────────────────────────

COMPONENT-005

Database Writer

Purpose

Persist validated data.

Responsibilities

Insert Candles

Create Ingestion Runs

Record Metadata

Maintain Lineage

Non-Responsibilities

Data Validation

Exchange Communication

────────────────────────────

COMPONENT-006

Checkpoint Manager

Purpose

Support recovery.

Responsibilities

Track Progress

Store Recovery State

Resume Interrupted Jobs

────────────────────────────

COMPONENT-007

Monitoring Layer

Purpose

Operational visibility.

Responsibilities

Runtime Metrics

Failure Tracking

Certification Tracking

Audit Logs

────────────────────────────

DATA FLOW

STEP 1

Exchange Client requests candles.

↓

STEP 2

Collector receives data.

↓

STEP 3

Validation Engine validates dataset.

↓

STEP 4

Database Writer records ingestion run.

↓

STEP 5

Validated candles inserted.

↓

STEP 6

Integrity checks executed.

↓

STEP 7

Checkpoint updated.

────────────────────────────

FAILURE FLOW

Validation Failure

↓

Reject Entire Run

↓

Record FAILED Ingestion Run

↓

Generate Audit Record

↓

Preserve Database State

────────────────────────────

DESIGN PRINCIPLES

Principle 1

No component bypasses Validation Engine.

────────────────────────────

Principle 2

No component writes directly to research datasets.

────────────────────────────

Principle 3

No component modifies historical candles.

────────────────────────────

Principle 4

All failures must be observable.

────────────────────────────

Principle 5

All operations must be replayable.

────────────────────────────

IMPLEMENTATION STACK

Language

Python

────────────────────────────

Database

Supabase PostgreSQL

────────────────────────────

Version Control

GitHub

────────────────────────────

Runtime

Hugging Face Spaces

────────────────────────────

Research OS

Gemini Gem

────────────────────────────

SUCCESS CRITERIA

Historical Backfill Supported

Incremental Collection Supported

Validation Enforcement Active

Lineage Tracking Active

Recovery Supported

Auditability Maintained

────────────────────────────

END OF DOCUMENT
