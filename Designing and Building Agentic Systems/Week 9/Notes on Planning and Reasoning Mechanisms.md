# Notes on Planning and Reasoning Mechanisms

*Certificate Program in Agentic AI — Johns Hopkins University x Great Learning*  
*Week 9*

---

## 📋 Overview

*[Add overview content here]*

---

# **9.02 – Foundations of Agents (Expanded Notes)**

### *What an agent is, how it "sees" the world, how it acts, and how it decides what to do.*

---

## **1. What Is an Agent?**

An **agent** is anything that:

1. **Perceives** its environment → through sensors
2. **Acts** on that environment → through actuators
3. **Pursues goals** → based on internal logic, rules, or learned behavior

### Think of it like this:

You (as a driver) = the agent
Road, trucks, traffic, weather = environment
Mirrors, GPS, sensors = perception
Wheel, pedals, gears = actuators
Goal = deliver freight safely and efficiently
Policy = your driving habits, training, rules

> **Agents = Perception + Action + Goals + Decision Policies**

---

## **2. Environment → The World an Agent Lives In**

Every agent exists inside some environment.
Environments differ by:

### **a. Observability**

* **Fully observable** → everything needed to make a decision is visible
  (Example: Chess board – all pieces are known)
* **Partially observable** → the agent lacks full visibility
  (Example: Real-world driving, hidden objects, storms)

### **b. Determinism**

* **Deterministic** → same action → same result
  (Example: A calculator)
* **Stochastic** → results involve uncertainty
  (Example: traffic, weather, human behavior)

### **c. Episodic vs Sequential**

* **Episodic** → each action is independent
* **Sequential** → actions affect future states
  (Most real-world tasks are sequential — like route planning)

### **d. Static vs Dynamic**

* **Static** → environment does not change while the agent decides
* **Dynamic** → environment changes, so decisions must be fast
  (Driving, stock trading, real-time video processing)

### **e. Discrete vs Continuous**

* **Discrete** → limited number of possible actions
* **Continuous** → infinite possibilities
  (Steering angle on a truck = continuous)

---

## **3. Agent Components**

An effective agent typically contains:

### **a. Sensors**

Identify information from the environment

* Cameras
* LIDAR
* Text input (for LLMs)
* Microphones
* Logs and databases

### **b. Actuators**

What the agent uses to take action

* Motors, wheels
* API calls
* Output messages
* Tool use (search, calculator, browser)

### **c. Internal State**

The agent stores memory of things it can't currently observe
Examples:

* Where you started a trip
* Last known trailer you hooked
* A plan that was formed earlier
* A partial chain-of-thought

### **d. Decision-Making Policy**

This is the "brain" of the agent.
It determines what action to take next.

This policy can be:

* Hardcoded rules
* Optimization algorithm
* Machine learning model
* LLM reasoning (ReAct, Chain-of-Thought)
* A hybrid system

---

## **4. Types of Agents**

### **1. Simple Reflex Agent**

Acts only on current perception
No internal state
"If sensor says X → do Y"
Example: Thermostat, or "if text contains bad word → block"

### **2. Model-Based Agent**

Has memory
Maintains internal representation of environment
This is where **LangGraph**, **ReAct**, and advanced LLMs operate.

### **3. Goal-Based Agent**

Evaluates possible actions by how well they achieve a goal
Example:

* "Find the shortest path"
* "Optimize fuel efficiency"

### **4. Utility-Based Agent**

Chooses action based on maximizing a utility score
Example:

* A robot selecting safest + fastest + cheapest route
* An AI assistant picking the "best" answer

### **5. Learning Agent**

Improves itself over time
Learns from:

* Rewards
* Mistakes
* Feedback
* Data
  All modern autonomous systems are learning agents.

---

## **5. Agent Loop (Perception → Decision → Action)**

This is the heart of ALL agent systems:

```
while True:
    observe()
    update_state()
    choose_action()
    execute_action()
```

This loop defines the life of an agent.

For LLM agents, this becomes:

```
perceive user input →
reason →
choose tool or text →
act →
get new observation →
repeat
```

---

## **6. Key Idea: Agents Are About Action, Not Just Answers**

Traditional models:

* You give input
* They give response

Agentic models:

* Observe
* Think
* Act
* Check
* React
* Update memory
* Replan
* Execute multi-step strategies

This is why agents represent the next evolution of AI.

---

## **7. Part You Saw in the Video ("Making Decisions Based on Sensor Data")**

The sentence the video highlighted:

> "We're making decisions based on some set of data, some sensor data…"

This is the essence:
→ Agents do not blindly answer
→ They respond to *signals*
→ They adapt to *changes in the environment*
→ They pursue *goals*

In LLM agents, "sensor data" =

* The prompt
* Retrieve results
* API outputs
* Tool outputs
* Internal memory
* Observations from previous actions

---

## **8. Why This Matters for Agentic AI Engineering**

To build your own agents (Buddy, AQL, LAM AI, the Walmart pipeline), you must:

* Know what the environment looks like
* Define what sensors your agent has
* Define what actuators it has
* Define the loop your agent will follow
* Decide how it will maintain memory
* Decide whether it is goal-based or utility-based
* Decide how it improves over time

This is the foundation you'll keep coming back to.

---

# **9.03 – Chain of Thought (CoT) Prompting (Expanded Notes)**

### *How step-by-step reasoning improves answers, planning, and agentic behavior.*

---

# **1. What Is Chain of Thought (CoT)?**

**Chain of Thought prompting** is a method where the model is explicitly encouraged to "think step-by-step."

Instead of generating a quick final answer, the model:

1. Breaks the problem into steps
2. Shows intermediate reasoning
3. Arrives at a more accurate or logical conclusion

### Why it matters

LLMs *can* reason, but when forced to answer instantly, they:

* Skip steps
* Miss dependencies
* Make logical errors
* Lose the structure of multi-step problems

CoT activates the deeper reasoning pathways.

> **CoT = Explicit reasoning → better decisions → more reliable agents**

---

# **2. Why CoT Matters for Agentic Systems**

Agentic AI isn't about giving answers — it's about **planning**, **acting**, **checking**, and **correcting**.

To do that, the AI must:

* Reason
* Break down steps
* Predict outcomes
* Evaluate constraints
* Sequence actions

CoT is the "engine" that powers these capabilities.

### Without CoT, agents:

✔ Get confused by multi-step tasks
✔ Drop details
✔ Take the wrong action
✔ Fail to re-evaluate states
✔ Can't solve long-horizon tasks

### With CoT, agents:

✔ Think like a planner
✔ Maintain coherent thought across steps
✔ Handle complex instructions
✔ Verify intermediate results
✔ Produce more deterministic behavior

This is why 9.03 is placed *before* ReAct — because ReAct is literally built on top of CoT.

---

# **3. Zero-Shot vs. CoT Reasoning (The Big Difference)**

### **Zero-shot reasoning**

* Model is given a question → answer directly
* No steps
* Often brittle
* Works only for simple tasks

### **CoT reasoning**

* Model is guided to "think aloud"
* Produces step-by-step explanation
* Handles multi-step, sequential, logical problems
* Supports planning and verification

### Example:

**Zero-shot:**
"What's 27 × 14?" → "108" (wrong)

**CoT:**
"Think step-by-step."
27 × 14 = 27 × (10 + 4) = 270 + 108 = 378
→ "378" (correct)

---

# **4. Explicit vs Implicit CoT**

There are **2 types of CoT**:

### **1. Implicit CoT**

The model reasons internally but only outputs the final answer.

Prompt example:
"Think step-by-step, but only give me the final answer."

Useful when:

* You want reasoning internally
* You don't want to expose intermediate thoughts
* Safety & privacy are needed
* You want agent actions, not verbose explanations

This is the form your agents (Buddy, AQL, LAM AI) will use.

---

### **2. Explicit CoT**

The model outputs all reasoning steps.

Prompt example:
"Explain your reasoning step-by-step."

Useful for:

* Learning
* Debugging
* Teaching
* Improving accuracy
* Complex multi-step tasks

---

# **5. Structure of Chain of Thought Reasoning**

Most CoT follows this structure:

1. **Restate the problem**
2. **Break into components**
3. **Solve each component**
4. **Combine the results**
5. **Check for consistency**
6. **Give final answer**

This is exactly how human experts work.

---

# **6. CoT Limitations (and Why It Can Still Fail)**

Even though CoT is powerful, it has limitations:

### **a. The model may hallucinate extra steps**

Sometimes it invents unnecessary reasoning.

### **b. It may repeat or ramble**

Too many steps → messy chain.

### **c. It may introduce errors in intermediate steps**

If one step is wrong → entire solution collapses.

### **d. Some problems require domain-specific reasoning**

CoT works best when the model has the knowledge already.

### **e. Too much CoT can slow down inference**

Long reasoning → longer responses, higher cost.

This is why **guided CoT** (structured templates) is better than free-form CoT.

---

# **7. How CoT Enables ReAct (Chapter 9.04)**

ReAct =
**Reasoning + Acting**

But reasoning must happen first — and CoT provides the reasoning framework.

ReAct traces look like:

```
Thought:
Action:
Observation:
```

That "Thought:" part is literally Chain of Thought.

This is why the instructors said CoT is crucial for:

* Tool calling
* Multi-step execution
* Planning
* Decision-making
* Adaptation
* Correction loops

---

# **8. Practical Prompts You Can Use (And Will Help in Your JHU Program)**

### **Basic CoT:**

"Let's break this down step-by-step."

### **Structured CoT:**

"Let's solve this by breaking it into components:

1. Interpret the question
2. Identify variables
3. Apply reasoning
4. Compute
5. Verify
6. Give final answer"

### **Implicit CoT (for agents):**

"Think step-by-step, but only output the final answer."

### **CoT for planning:**

"Break the task into substeps with dependencies.
Identify risks, constraints, and the sequence of actions."

---

# **9. How This Applies to You (Faheem)**

Because you're building:

* **Buddy AI Agent**
* **AQLAI_Nexus**
* **LAM AI Integration multi-agent system**
* **Autonomous scientific writing agents**

CoT is foundational for:

* planning trips
* reasoning through dispatch events
* analyzing trends
* generating research papers
* orchestrating actions
* interacting with APIs
* reducing hallucinations
* making each agent explain itself
* enabling self-correction loops

CoT is literally the muscles and ligaments that allow your agents to act with intelligence.

---

# **📘 Expanded Notes: 9.04 — ReAct Framework and Its Traces**

## **1. What is ReAct? (Reason + Act)**

ReAct is a prompting and agent-design framework where an AI model *interleaves* two types of outputs:

1. **Reasoning (CoT — Chain of Thought)**

   * The internal thinking steps the model uses to break down a problem.
   * Not shown to the user unless specifically prompted.
2. **Action (Tool Use / API Calls / Environment Interactions)**

   * The steps the model takes *in the real world*.
   * Can involve:

     * Searching the web
     * Querying databases
     * Running code
     * Using calculators
     * Calling APIs
     * Navigating tasks

👉 ReAct = **the loop between thinking → doing → observing → thinking again**.

This is the foundation of *modern agents* like the ones you're building.

---

# **2. Why ReAct Was Created**

Before ReAct, a model had two major problems:

### **a) Pure Reasoning Agents**

Models would think but couldn't take actions.
Example: It could explain "how to look up a flight" but couldn't *actually do* it.

### **b) Pure Action Agents**

Could take actions but had no self-reflection or logic.
Example: A tool-calling agent would call tools blindly with no reasoning.

### **The Solution: Combine Both**

ReAct lets a model decide:

* *When* to think
* *When* to act
* *What* tool to use
* *How* to interpret the tool's output
* *When* to stop the loop

This mirrors human problem-solving.

---

# **3. The ReAct Loop — Step-by-Step**

Every ReAct agent executes a cycle like this:

### **1. Thought**

The model analyzes the situation.

> "I need to get the weather for Newark, NJ."

### **2. Action**

The model chooses the correct tool.

> Action: `weather_api(query="Newark, NJ")`

### **3. Observation**

The environment responds.

> Observation: "Rain expected in 2 hours."

### **4. Thought (Again)**

The model uses the observation to decide the next step.

> "Given the rain, I should also check traffic impact."

### **5. Action (Again)**

> Action: `traffic_api(query="Newark, NJ")`

➜ Repeat until a final answer is ready.

This is *exactly* how your Buddy Dual-Agent System will operate internally.

---

# **4. Traces — What They Are & Why They Matter**

A **ReAct Trace** is the complete record of the reasoning + actions.

A trace consists of:

* The model's *chain of thought*
* Each action taken
* Every observation from tools
* All final outputs

### **Why traces matter:**

1. **Debugging**
   You can see *where* an agent made a logical mistake.

2. **Training & Fine-tuning**
   You can feed clean traces into model training to improve reasoning.

3. **Safety & Oversight**
   Allows human review of:

   * incorrect actions
   * unnecessary tool calls
   * hallucinated reasoning

4. **Optimization**
   Helps reduce:

   * redundant steps
   * loops
   * unnecessary API hits
   * cost

Modern frameworks (LangGraph, CrewAI, Autogen, OpenAI Agents) rely heavily on traces.

---

# **5. ReAct Output Structure (General Pattern)**

A typical ReAct agent produces a sequence like:

```
Thought: I need to calculate the distance between two locations.
Action: call_tool("maps_lookup", {"start": "Trenton, NJ", "end": "Newark, NJ"})
Observation: 44.3 miles
Thought: Now I should calculate the ETA based on 65 mph average.
Action: compute(44.3 / 65)
Observation: 0.68 hours
Final Answer: About 41 minutes.
```

This structure is now considered the *standard for all agentic systems*.

---

# **6. When ReAct Shines**

ReAct is especially good for problems that require:

* Multiple sequential steps
* Access to real-time information
* External tools
* Multi-modal reasoning
* Decisions that depend on new observations
* Problem-solving under uncertainty

Examples:

* Trip planning (your Walmart system)
* Multi-step financial analysis
* Research agents
* Multi-modal assistants
* Workflow automation
* Robotics
* Medical triage agents
* Coding assistants
* Customer service agents

---

# **7. Limitations of ReAct**

ReAct is powerful but not perfect.

### **a) Too many tool calls**

Models sometimes overuse tools.

### **b) Looping behavior**

Without guardrails, the agent may think/action too many times.

### **c) Sensitive to prompt design**

The agent can misinterpret tool names or descriptions.

### **d) Hard to guarantee safety**

Reasoning steps can contain harmful or incorrect logic if not monitored.

### **e) High latency**

More steps = slower responses.

This is why **LangGraph** (Module 9.08) exists—to control and constrain the ReAct loop.

---

# **8. ReAct vs. Traditional Agents**

| Feature              | Traditional Agent        | ReAct Agent                         |
| -------------------- | ------------------------ | ----------------------------------- |
| Reasoning            | ❌ Minimal                | ✅ Strong (CoT)                      |
| Tool Use             | ⚠️ Limited or predefined | ✅ Flexible & dynamic                |
| Adaptability         | Low                      | High                                |
| Tracing              | Minimal                  | Full trace (Thought → Action → Obs) |
| Multi-step workflows | Weak                     | Excellent                           |
| Safety via oversight | Low                      | High                                |

---

# **9. REAL-WORLD EXAMPLES**

### **OpenAI GPT-4o Agents**

Uses ReAct under the hood to decide:

* When to call tools
* When to browse
* When to read PDFs
* When to calculate

### **Google DeepMind Agents**

Gemini Agents also use ReAct-like loops.

### **LangChain / LangGraph**

Both frameworks implement ReAct as the core runtime.

### **Your AQLAI_Nexus System**

The ReAct loop is the *heart* of your Buddy Dual-Agent architecture:

* Manager = "reasoning controller"
* Worker = "action executor"

---

# **10. Key Takeaways**

* ReAct = *Reason + Action*, the essential feedback loop of modern AI agents.
* Agents don't just think — they *do* things, observe results, and think again.
* Traces allow debugging, safety review, and optimization.
* ReAct is the bridge between LLM reasoning and real-world actions.
* Almost every modern agent system is built on some version of ReAct.
* Your trucking AI system will use ReAct at every level — from trip planning to anomaly detection.

---

---

# **9.05: Agent Architectures and Optimization Techniques**

## **1. Why Architecture Matters in Agentic Systems**

Even though the ReAct loop provides reasoning + acting, it is **not enough** for full agent intelligence. Architecture determines:

* how information flows
* how decisions persist over time
* how multi-step goals are coordinated
* how external tools and memory are used
* how the agent improves efficiency

Architecture is the *mind structure* behind the loop.

---

## **2. Key Architectural Questions**

The lecture introduces four core design questions:

### **A. How do we structure the agent's beliefs?**

Beliefs = the agent's internal representation of the world.

#### **BDI Architecture: Belief-Desire-Intention Model**

The classic agent architecture follows a **BDI (Belief-Desire-Intention)** model:

```
Perception (input from environment)
           ↓
       Beliefs ←─────────────────→ Desires
(agent's knowledge              (long-term goals
 and perception)                and motivations)
           ↘                   ↙
            →  Intentions  ←
           (active plans
          being pursued)
                 ↓
           Actions
    (executed in environment)
```

**Key Components:**

* **Beliefs** — What the agent knows about the world (current state, context, facts)
* **Desires** — What the agent wants to achieve (goals, objectives, motivations)
* **Intentions** — Active plans the agent commits to pursuing (chosen actions)
* **Perception** → Updates beliefs based on environment
* **Actions** → Modify the environment based on intentions

This architecture separates:
- **Knowledge** (beliefs)
- **Goals** (desires)  
- **Execution** (intentions/actions)

Can be implemented as:

✅ vector memories
✅ knowledge bases (RAG)
✅ symbolic state representations
✅ key-value scratchpads
✅ semantic graphs (LangGraph, GraphRAG)

Important distinctions:

* **Episodic memory** — what happened
* **Semantic memory** — what is true
* **Working memory** — what is relevant right now

---

### **B. How do we manage long-term goals?**

Agents need more than next-step reasoning.

Goal management approaches:

**1. Hardcoded planners**

* fixed sequence or state machine
* predictable, reliable
* low flexibility

**2. LLM-driven planners**

* LLM decides tasks dynamically
* flexible, adaptive
* harder to guarantee success

**3. Hybrid planners (recommended)**

* LLM proposes plan
* deterministic system validates, orders, or constrains

This is what the lecturer means when saying:

> removing planning responsibility from the LLM

Meaning: planning is handled structurally, not implicitly in prompts.

---

### **C. How do we implement memory?**

Memory options compared:

| Memory Type      | Pros               | Cons                   |
| ---------------- | ------------------ | ---------------------- |
| No memory        | simple             | easily forgets context |
| Prompt-only      | lightweight        | expensive & brittle    |
| Vector DB        | scalable recall    | requires embeddings    |
| Tool + DB hybrid | strong performance | more complexity        |
| Graph memory     | reasoning-friendly | still emerging         |

Memory enables:

✅ continuity
✅ personal preference tracking
✅ multi-step execution
✅ retrieval efficiency optimization

---

### **D. How does the ReAct engine fit inside architecture?**

ReAct becomes **only the inference core**, while architecture provides:

* task routing
* context assembly
* memory retrieval
* failure recovery
* evaluation
* tool orchestration

So ReAct is **a component**, not the whole agent.

---

## **3. Optimization Techniques Introduced**

The lecture briefly gestures toward optimization — here's the expanded detail.

### **A. Prompt Optimization**

* Few-shot vs zero-shot
* Role prompting
* Structured output formats
* Reasoning scaffolds

### **B. Latency Optimization**

* caching model responses
* reducing token windows
* compressing memories
* tool call minimization

### **C. Search & Planning Optimization**

* beam search reasoning
* Monte-Carlo tree planning
* high-level to low-level task decomposition

### **D. Execution Optimization**

* parallel tool calling
* batching queries
* hierarchical subagent routing

---

## **4. Architectural Blueprints (High-Level)**

The lecture transitions toward previewing:

### ✅ **Modular / Component-Based Architecture**

* memory module
* planner module
* evaluator module
* execution engine

### ✅ **Hierarchical Agents**

* manager agent
* worker agents
* verifier agent

### ✅ **Graph-based Architectures (LangGraph)**

* nodes = agent states
* edges = transitions
* supports loops, branching, retries

These are meant to give **structure to the agent's mind**, not leave everything to the LLM.

---

## **5. Why Domain-Specific Architectures Help**

This was the part that caused confusion — here's the intended meaning:

### When you:

✅ hardcode transitions
✅ constrain allowed actions
✅ encode domain rules
✅ define success conditions

…the agent doesn't need to **reason from scratch** every time.

This:

* improves reliability
* reduces hallucinations
* increases safety
* lowers cost
* makes debugging possible

So adding structure is **not the same as Few-Shot CoT**.

Few-Shot CoT improves reasoning *inside the LLM*.

Domain architectural constraints improve reasoning *outside the LLM*.

---

## **6. Core Takeaways**

### ✅ Cognitive architecture = how the agent thinks

### ✅ ReAct is just the reasoning engine, not the architecture

### ✅ Planning can be done by:

* LLM (flexible but unreliable)
* code (reliable but rigid)
* hybrid (best of both)

### ✅ Memory is essential for:

* context retention
* long-horizon tasks
* personalization

### ✅ Optimization occurs at multiple layers:

* prompting
* execution
* planning
* memory
* architecture

---

## **7. What's Coming Next in the Course**

This module sets up:

✅ ReAct limitations
✅ need for structured architectures
✅ motivation for LangGraph
✅ shift from prompting → system design

---

## 🧠 Key Concepts

### Planning

### Reasoning

---

## Examples and Applications

---

## Reflection Questions

---

*Notes prepared by Faheem (Clarence Downs)*  
🧠 *JHU Agentic AI Certificate — Great Learning Platform*  
📂 Repo: [ProfessorBone/JHU-Agentic-AI](https://github.com/ProfessorBone/JHU-Agentic-AI)
