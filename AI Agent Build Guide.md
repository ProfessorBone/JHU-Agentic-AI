# **AI Agent Build Guide — Basic → Kick‑Ass**

  

A step‑by‑step playbook for building [[AI agents]] in four tiers of increasing power. Each tier lists **goals, steps, deliverables, checklists, and guardrails**. Progress when the Success Criteria are met.

---

## **Table of Contents**

- [Tier 0 · Prereqs & Principles](#tier-0--prereqs--principles)
    
- [Tier 1 · Basic Agent (MVP Chat + Single Tool)](#tier-1--basic-agent-mvp-chat--single-tool)
    
- [Tier 2 · Intermediate Agent (RAG + Tools + Simple Memory)](#tier-2--intermediate-agent-rag--tools--simple-memory)
    
- [Tier 3 · Advanced Agent (Multi‑Agent + Planning + Observability)](#tier-3--advanced-agent-multiagent--planning--observability)
    
- [Tier 4 · Kick‑Ass Agent (Enterprise‑Grade, Self‑Improving)](#tier-4--kickass-agent-enterprisegrade-selfimproving)
    
- [Appendix A · Prompt & Schema Templates](#appendix-a--prompt--schema-templates)
    
- [Appendix B · Evaluation & Metrics](#appendix-b--evaluation--metrics)
    
- [Appendix C · Security & Compliance Checklist](#appendix-c--security--compliance-checklist)
    
- [Appendix D · Recommended Stack by Tier](#appendix-d--recommended-stack-by-tier)
    

---

## **Tier 0 · Prereqs & Principles**

  

**Mindset:** Build small, measure everything, ship often.

  

**Core Principles**

1. **Role & Outcome First** — Define who the agent serves and what artifact it must produce (text/JSON/report/action).
    
2. **Structured I/O** — Treat the agent like an API. Inputs/outputs are schemas, not vibes.

3. **Safety by Design** — Ethical rules, refusal cases, and red‑team prompts from day one.
    
4. **Observability** — Logs, traces, and metrics or it didn't happen.
    

  

**Env Setup (minimum)**

- Version control (Git), Python ≥3.10, package manager (uv/pip/poetry), .env secrets, Docker optional.
    

  

**Milestone Gate**

- You can run a "hello world" LLM call locally and return JSON.
    

---

## **Tier 1 · Basic Agent (MVP Chat + Single Tool)**

  

**Goal:** A reliable single‑agent that answers in a narrow domain and can call **one tool** (e.g., calculator, web search, or DB lookup).

### **Steps**

1. **Define Role & Goal**
    
    - Example: _Expense Assistant_: "Given a receipt text, output a clean JSON expense record."
        
    
2. **Design Structured I/O**
    
    - Draft a Pydantic/JSON schema for input and output. Keep it tiny (5–10 fields max).
        
    
3. **Author the System Prompt**
    
    - Include role, tone, constraints, and a compact checklist (Do/Don't).
        
    
4. **Implement the Tool**
    
    - One tool with a typed function signature. Validate arguments.
        
    
5. **Ground Truth Samples**
    
    - Create 10–20 input→output pairs. Store as unit tests.
        
    
6. **Run Loop**
    
    - Call LLM → parse JSON → validate → retry once on schema error.
        
    
7. **UI Stub**
    
    - CLI or simple FastAPI route (POST /run).
        
    
8. **Logging**
    
    - Capture inputs, outputs, latency, token usage, and tool calls.
        
    


### **Deliverables**

- system_prompt.md, schemas.py, tools.py, runner.py, tests, simple README.

### **Checklist**

- Outputs always validate against schema
    
- Max tokens & timeouts enforced
    
- One‑shot retry on invalid JSON
    
- 90%+ pass on 20 sample tests
    
### **Success Criteria**

- Deterministic on fixed seed; produces valid JSON ≥ 95% of runs.
    

---

## **Tier 2 · Intermediate Agent (RAG + Tools + Simple Memory)**

**Goal:** Add **Retrieval‑Augmented Generation**, multiple tools, and **episodic memory** for context over time.

### **Steps**

1. **Expand Role & Knowledge Boundary**
    
    - Clarify: what's in the knowledge base vs what must be refused.
        
    
2. **Document Ingest Pipeline**
    
    - Chunk → embed → store (Chroma/Milvus/FAISS). Add metadata (source, date, tags).
        
    
3. **RAG Query Flow**
    
    - Guardrail: query rewriting → retrieve top‑k → context window budget.
        
    
4. **Add 2–3 Tools**
    
    - E.g., web fetch, calculator, DB read. Gate with whitelist.
        
    
5. **Episodic Memory**
    
    - Store conversation summaries + key facts (user prefs) with TTL.
        
    
6. **Policy/Refusal Layer**
    
    - Safety rules, compliance phrases, and escalation paths.
        
    
7. **Thin UI**
    
    - Minimal web UI (Gradio/Streamlit) or chat widget.
        
    
8. **Cache & Performance**
    
    - Add response cache; batch embeddings; measure latency.
        
    
9. **Eval Harness**
    
    - Create task sets: no‑context, RAG‑needed, refusal‑needed. Track accuracy.
        
### **Deliverables**

- Ingest script, vector DB, RAG router, memory store, policies, expanded tests, lightweight UI.
    
### **Checklist**

- Top‑k retrieval hits contain ground‑truth answer ≥ 80%
    
- RAG off switch for A/B testing
    
- Refusal coverage for out‑of‑scope requests
    
- PII filter for logs
    
### **Success Criteria**

- Beats Tier‑1 accuracy by ≥ 20% on RAG‑dependent tasks; stable latency (<2.5s p95) on 50th percentile queries.
    

---

## **Tier 3 · Advanced Agent (Multi‑Agent + Planning + Observability)**

**Goal:** Introduce **planner/worker** separation, **multi‑agent roles**, and production‑grade **observability**.

### **Steps**

1. **Agent Topology**
    
    - Roles: _Planner_, _Researcher_, _Executor_, _Critic_. Define responsibilities & I/O contracts.
        
    
2. **Task Planning**
    
    - Decompose user goal → sub‑tasks with dependencies; depth‑limit + budget.
        
    
3. **Toolformer Layer**
    
    - Central tool registry with auth, rate limits, JSON schema per tool.
        
    
4. **Reflection Loop**
    
    - Add self‑critique + repair (e.g., "Reflexion"-style) with guardrails.
        
    
5. **Knowledge Graph / GraphRAG (optional)**
    
    - Build entity/relation graph; retrieve by neighborhood.
        
    
6. **Long‑Term Memory**
    
    - Separate vector RAG (knowledge) from memory (episodes/profiles). Add recall policies.
        
    
7. **Observability**
    
    - Structured logs, traces (OpenTelemetry), dashboards (Prometheus/Grafana).
        
    
8. **Evaluation at Scale**
    
    - Nightly regression on synthetic & real tasks; drift alerts.
        
    
9. **Resilience**
    
    - Circuit breakers, retries with backoff, fallbacks across model providers.
        
    
10. **Packaging & Deploy**
    

  

- Docker, CI, staged envs (dev/stage/prod), IaC (Terraform optional).

### **Deliverables**

- Orchestrator service, agent registry, planning policy, tracing middleware, CI pipeline, dashboards, synthetic eval suite.
    
### **Checklist**

- SLA: p95 latency target set and met
    
- Budgeting: max step/tool limits enforced
    
- Traces link steps → tools → tokens
    
- Canary release process documented
    
### **Success Criteria**

- Completes multi‑step tasks with ≤1 critical error per 100 runs; MTTR < 30 min via on‑call playbook.
    

---

## **Tier 4 · Kick‑Ass Agent (Enterprise‑Grade, Self‑Improving)**

**Goal:** A hardened, scalable, **self‑optimizing** agent platform with strong governance, safety, and economic efficiency.
### **Steps**

1. **Constitutional Layer**
    
    - Values, rules, refusal policies, priority resolution; red‑team prompts.
        
    
2. **Policy‑Driven Orchestration**
    
    - Route by task type, risk level, and cost/latency constraints.
        
    
3. **Model Mesh**
    
    - Multi‑provider, multi‑modal routing; autoscaling; GPU/offload strategies.
        
    
4. **Data Contracts & Governance**
    
    - Schemas versioned; lineage; retention; DLP; encryption at rest/in transit.
        
    
5. **Advanced Memory**
    
    - Hybrid memory: vector + graph + key‑value; TTLs; decay heuristics; privacy scopes.
        
    
6. **Active Learning & Auto‑Eval**
    
    - Collect user feedback; auto‑label; retrain retrieval index; prompt evolution.
        
    
7. **Reward Models / Preference Optimization (optional)**
    
    - Use ratings to fine‑tune prompts or small adapters.
        
    
8. **Cost & Carbon Controls**
    
    - Token spend budget; dynamic routing to cheaper models; batch & cache.
        
    
9. **Incident Response & Abuse Handling**
    
    - Playbooks, audit trails, rollbacks, kill‑switch.
        
    
10. **Enterprise Integrations**
    

- SSO, SCIM, role‑based access, secret management, audit exports.
    
### **Deliverables**

- Constitution file(s), policy router, model gateway, governance docs, auto‑eval pipeline, cost dashboards, incident run-books.

### **Checklist**

- Monthly red‑team runs; findings tracked
    
- Cost per task & per user monitored
    
- Privacy impact assessment signed off
    
- Disaster recovery test performed
    
### **Success Criteria**

- Safe, fast, low‑cost operations at scale with measurable month‑over‑month improvement in quality and unit economics.
    

---

## **Appendix A · Prompt & Schema Templates**

  

### **A1. Compact System Prompt (fill‑in)**

```
You are <ROLE>, serving <AUDIENCE>. Your job: <OUTCOME>.
Follow the rules:
1) Output must match schema exactly.
2) Use tools only when needed.
3) Refuse if request is unsafe/out‑of‑scope; suggest alternatives.
4) Think step‑by‑step but return only the final JSON.
```

### **A2. Output JSON Schema (example)**

```
{
  "title": "AgentOutput",
  "type": "object",
  "properties": {
    "status": {"type": "string", "enum": ["ok", "error"]},
    "answer": {"type": "string"},
    "citations": {"type": "array", "items": {"type": "string"}},
    "cost_tokens": {"type": "integer", "minimum": 0}
  },
  "required": ["status", "answer"],
  "additionalProperties": false
}
```

### **A3. Tool Signature (example)**

```
{
  "name": "search_web",
  "description": "Query the web and return top results",
  "parameters": {
    "type": "object",
    "properties": {
      "query": {"type": "string"},
      "k": {"type": "integer", "minimum": 1, "maximum": 10}
    },
    "required": ["query"],
    "additionalProperties": false
  }
}
```

---

## **Appendix B · Evaluation & Metrics**

**Functional**: exact‑match, F1/ROUGE, task success rate, hallucination rate.

**UX**: CSAT, deflection rate, time‑to‑answer.

**Ops**: p50/p95 latency, error rate, token spend per task, cache hit rate.

**Safety**: jailbreak success rate, refusal correctness, PII leakage.


**Test Sets**

- Golden set (hand‑labeled), synthetic variations, adversarial prompts, regression suite.
    

**Gates**

- Promote a model/prompt only if it improves ≥ X% on target metrics and doesn't regress safety.
    

---

## **Appendix C · Security & Compliance Checklist**

- Secrets in vault; no secrets in logs
    
- PII masking/hashed IDs; data minimization
    
- Encryption in transit (TLS) and at rest
    
- Access control: RBAC, least privilege, audit logs
    
- Data retention policy with TTLs
    
- Vendor & model risk review
    

---

## **Appendix D · Recommended Stack by Tier**

**Tier 1**: FastAPI, Pydantic, OpenAI/Claude API, one tool, pytest, simple logs.

**Tier 2**: + Chroma/Milvus/FAISS, LangChain/LlamaIndex, small memory store, Gradio/Streamlit.

**Tier 3**: + Orchestrator (CrewAI/LangGraph/OpenAI Assistants + Tools), OpenTelemetry, Prometheus/Grafana, Docker, CI.

**Tier 4**: + Model gateway (router), policy engine (Constitution), multi‑provider backends, feature store, auto‑eval pipelines, SSO/RBAC, cost dashboards.

---

### **How to Use This Guide**

1. Pick your tier and copy the steps as a checklist.
    
2. Fill in the prompt/schema templates.
    
3. Build tests before you wire tools.
    
4. Add observability as soon as something works.
    
5. Move up a tier only when Success Criteria are met.



If you internalize the flow from **Tier 1 → Tier 4**, you'll be able to architect practically any agentic system, from a lightweight local assistant to a self-improving multi-agent platform like your **AQLAI _Nexus**.

Here's a quick way to memorize it efficiently:

---

### **🧠 Memory Hack Plan**

**1️⃣ Chunk by Tier**

- **Tier 1 – Core Mechanics:** Role, Schema, Prompt, One Tool, Test.
    
- **Tier 2 – Context Engine:** RAG, Tools, Memory, Policy.
    
- **Tier 3 – Orchestration:** Planner + Workers, Reflection, Observability.
    
- **Tier 4 – Autonomy:** Constitution, Governance, Optimization, Scale.
    

**2️⃣ Use Mnemonics**


> **"Real Smart Reasoners Make Awesome Code"**

> _Role → Schema → Reasoning → Memory → Automation → Control._


**3️⃣ Visualize**

Picture each tier as a **pyramid** building upward:

foundation (LLM + tool) → walls (RAG + memory) → floors (multi-agents + planning) → crown (autonomy + self-improvement).

**4️⃣ Apply Immediately**

Build a **Tier 1 mini-agent tonight**—even something trivial like a JSON summarizer. Each working prototype locks the memory deeper.

**5️⃣ Teach It**

Explain the four tiers aloud (or record a 2-minute voice note). Teaching is retention gold.

---