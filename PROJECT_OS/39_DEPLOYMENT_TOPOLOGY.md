ALPHAMOBILE QUANT OS — DEPLOYMENT TOPOLOGY

PURPOSE

Define the infrastructure architecture of AlphaMobile Quant OS.

Establish clear responsibilities, trust boundaries, failure domains, and recovery procedures.

────────────────────────────

SYSTEM OVERVIEW

COMPONENTS

1. GitHub

2. Supabase

3. Hugging Face Space

4. Gemini Gem

────────────────────────────

COMPONENT RESPONSIBILITIES

GITHUB

Purpose

Source Control

Responsibilities

Repository Management

Version History

Migration Storage

Collector Code Storage

Architecture Documentation

Governance Documents

────────────────────────────

SUPABASE

Purpose

System of Record

Responsibilities

Reference Data

Market Data

Research Data

Signal Data

Audit Data

Dataset Metadata

────────────────────────────

HUGGING FACE SPACE

Purpose

Execution Runtime

Responsibilities

Historical Backfill

Incremental Collection

Validation Execution

Data Quality Checks

Checkpoint Management

────────────────────────────

GEMINI GEM

Purpose

Research Operating System

Responsibilities

Architecture Governance

Research Governance

Decision Governance

Validation Governance

Project Progress Tracking

Documentation Assistance

────────────────────────────

TRUST BOUNDARIES

Boundary 1

GitHub → Supabase

Controlled Through Migrations

────────────────────────────

Boundary 2

Collector → Supabase

Controlled Through Ingestion Contract

────────────────────────────

Boundary 3

Research → Production

Controlled Through Certification Process

────────────────────────────

FAILURE DOMAINS

DOMAIN 1

Collector Failure

Impact

No New Data

Historical Data Preserved

────────────────────────────

DOMAIN 2

Supabase Failure

Impact

Research Halted

Collection Halted

────────────────────────────

DOMAIN 3

GitHub Failure

Impact

Development Halted

Production Continues

────────────────────────────

RECOVERY PROCEDURES

Collector Failure

Restart Collector

Resume From Checkpoint

────────────────────────────

Database Failure

Restore From Backup

Revalidate Dataset Integrity

────────────────────────────

Repository Failure

Restore Repository

Verify Commit Integrity

────────────────────────────

ARCHITECTURE PRINCIPLE

Single Source of Truth

Supabase Database

────────────────────────────

GOVERNANCE PRINCIPLE

No component may bypass the ingestion contract.

────────────────────────────

END OF DOCUMENT
