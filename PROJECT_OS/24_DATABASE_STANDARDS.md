ALPHAMOBILE QUANT OS — DATABASE STANDARDS

PURPOSE

Define mandatory PostgreSQL standards.

All database objects must comply.

────────────────────────────

PRIMARY KEY STANDARD

Every table must use:

UUID

Column Name:

id

Type:

uuid

Generation:

gen_random_uuid()

Example:

id uuid primary key default gen_random_uuid()

────────────────────────────

TIMESTAMP STANDARD

Every mutable table must include:

created_at

updated_at

Type:

timestamptz

All timestamps stored in UTC.

────────────────────────────

IMMUTABLE TABLE STANDARD

Append-only tables:

market_candles

research_results

signals

executions

audit_events

control_events

These tables must NEVER update historical records.

────────────────────────────

FOREIGN KEY STANDARD

All relationships enforced.

No orphan records allowed.

Foreign keys must be explicit.

────────────────────────────

INDEX STANDARD

Every foreign key:

indexed

Every major query path:

indexed

Every timestamp query:

indexed

────────────────────────────

NAMING STANDARD

Tables:

snake_case

Columns:

snake_case

Indexes:

idx_<table>_<column>

Constraints:

fk_<child>_<parent>

────────────────────────────

JSON STANDARD

Semi-structured data stored as:

jsonb

Never plain text JSON.

Examples:

payload_json

details_json

metrics_json

────────────────────────────

AUDIT STANDARD

Every critical event creates:

audit_events record

Mandatory.

No exceptions.

────────────────────────────

CONFIGURATION STANDARD

Risk values

Execution values

System settings

Must originate from:

system_config

No hardcoded production values.

────────────────────────────

SOFT DELETE POLICY

Default:

No deletes.

Historical records retained.

If deletion is required:

Use:

is_deleted

deleted_at

Never remove audit history.

────────────────────────────

MIGRATION STANDARD

All schema changes require:

Decision Ledger entry

Migration review

Rollback plan

Risk review

────────────────────────────

ROW LEVEL SECURITY STANDARD

All tables:

RLS enabled

Default policy:

deny all

Explicit access only.

────────────────────────────

RECOVERY STANDARD

Database must support:

Full rebuild from migrations

No manual schema creation.

────────────────────────────

FINAL RULE

Data integrity takes priority over convenience.

Auditability takes priority over performance.

Reproducibility takes priority over speed.

END OF DOCUMENT
