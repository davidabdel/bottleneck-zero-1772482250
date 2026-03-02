# Core Blueprint — Bottleneck Zero

## Promise
Install a 24-hour follow-up engine that reduces response lag, improves lead quality conversations, and increases booked calls/sales from existing inbound leads.

## Outcome Targets (first 14 days)
- Median first-response time: under 10 minutes
- % of leads receiving 3+ touches in 72 hours: 80%+
- Ghosted lead reactivation reply rate: 10–20% baseline target

## System Architecture

### Stage 1: First Touch (0–10 minutes)
Goal: acknowledge context and secure micro-commitment.

Message structure:
1. Personal context mirror
2. Relevant one-liner value anchor
3. Low-friction question

### Stage 2: Qualification + Objection Handling (10 minutes–24 hours)
Goal: progress conversation with clarity.

Rules:
- Never send walls of text
- Ask one question at a time
- Objections are signals of uncertainty; answer with clarity + proof

### Stage 3: Ghost Revival (24–72 hours)
Goal: re-open with value, not pressure.

Cadence:
- T+24h: fresh insight
- T+48h: mini proof/case
- T+72h: simple forked close question

## Implementation Workflow

1. Connect lead source (DM form, website form, calendar no-show list).
2. Tag every new lead with `new_inbound` + timestamp.
3. Trigger Script 1 immediately.
4. If no reply after 2 hours, send Script 2.
5. If reply includes objection, switch to Script 3 or 4.
6. If no activity by day 1, trigger ghost revival sequence.
7. Log outcomes weekly and iterate top 2 underperforming lines.

## Weekly Review Template
- Leads captured:
- Avg first-response time:
- Replies received:
- Calls booked:
- Sales closed:
- Top objection category:
- Script revisions planned:

## Guardrails
- Do not fabricate proof/case studies.
- Do not guarantee revenue outcomes.
- Keep tone consultative and specific.
