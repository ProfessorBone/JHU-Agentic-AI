Week 7 — Types of Environmental Properties & MDP

Agentic AI Design Course — Great Learning
Compiled by Faheem

⸻

1️⃣ Episodic vs Sequential Environments

🧩 Basic Definitions

Episodic Environment
	•	Each action is independent.
	•	What happens now doesn't affect later.
	•	No need to remember past actions.

Example:
A spam filter — each email is classified "spam" or "not spam."
Each decision is an isolated episode.

⸻

Sequential Environment
	•	Each action affects future states.
	•	The agent must plan ahead and remember context.

Example:
Chess — every move changes the board and future possibilities.
Same for driving or financial trading.

"Every action has a profound and cascading impact on future states."

⸻

⚙️ Why Sequential Environments Are Harder

Sequential environments require forward thinking and planning.
You must predict how each move shapes future options.

"This forward-thinking requirement is computationally much more difficult than episodic decision-making."

⸻

🧠 In AI Terms
	•	Episodic → "What's the best action now?"
	•	Sequential → "What's the best series of actions over time?"

⸻

2️⃣ Mapping to a Coding Agentic System

Aspect	Episodic Agent	Sequential Agent
Example Task	Fix one line of code on command	Plan and complete a full feature or refactor
Memory Needed	None (local context only)	High (task state, file dependencies, goals)
Planning Horizon	Single action	Multi-step reasoning (plan → act → check → replan)
Error Impact	Limited to current action	Cascades into future actions
Design Implication	Stateless request/response	Stateful loop with memory and evaluation

A coding agentic system (e.g., GPT-based code assistant) clearly operates in a sequential environment, because:
	•	Every edit changes what the agent sees next.
	•	Test results guide future corrections.
	•	Tool outputs shape subsequent plans.

⸻

3️⃣ Debugging Example

Episodic Agent

User: "Fix indentation error."
Agent: Fixes it → done (no memory needed).

Sequential Agent

User: "Make this API handle user authentication."
Agent must:
	1.	Read codebase structure
	2.	Add logic
	3.	Create tests
	4.	Run and interpret errors
	5.	Retry until passing

That's sequential reasoning — each action changes the next.

⸻

4️⃣ Summary Table

Property	Episodic	Sequential
Dependence on past actions	None	Strong
Need for memory	No	Yes
Planning complexity	Low	High
Example domain	Spam filtering, image labeling	Coding, chess, driving, logistics
Environment type	Static snapshot	Evolving state over time

A coding agent is sequential because every decision changes its environment (codebase, logs, repo). It must track history and adapt — that's the "burden of sequential environments."

⸻

5️⃣ Markov Decision Process (MDP)

🧭 Definition

An MDP is a mathematical framework for decision-making over time when results are partly random and partly under the agent's control.
It formalizes a sequential environment so an agent can plan optimally.

⸻

⚙️ Components of an MDP

Symbol	Name	Meaning	Example in Coding Agent
S	States	Possible situations	Codebase snapshot + test results
A	Actions	Choices agent can take	Edit file, run tests, query API
T(s,a,s′)	Transition Function	Probability that s,a → s′	Fix line → tests pass (70%) / new error (30%)
R(s,a)	Reward Function	Immediate feedback	+10 for tests passing, –5 for build fail
γ	Discount Factor	How future rewards are valued	0.9 = long-term slightly discounted

MDP = (S, A, T, R, γ)

⸻

🧩 The Markov Property

Future depends only on current state and action, not on entire history.
This simplifies planning and computation while still allowing stateful reasoning.

⸻

🎯 Goal of the Agent

Learn a policy π(s) → best action in each state, maximizing expected cumulative reward:

\pi^* = \arg\max_\pi \mathbb{E}\left[\sum_t γ^t R(s_t, a_t)\right]

In plain terms: take actions that lead to the best long-term outcome.

⸻

💻 Example in a Coding Agentic System

MDP Component	Example
State (S)	"Tests failing on auth.py"
Action (A)	"Edit line 24", "Run pytest", "Search docs"
Transition (T)	Fix → 70% pass / 30% new error
Reward (R)	+10 if pass, –5 if fail
Policy (π)	"If KeyError, check missing import."
Goal	Stable, passing codebase (max reward)

Loop:

Observe → Decide → Act → Receive Reward → Update Policy → Repeat

⸻

🧩 Connection to Agentic AI Design

MDPs formalize:
	•	Sequentiality (actions affect future states)
	•	Stochasticity (outcomes aren't fully predictable)
	•	Learning from experience (policy optimization)

⸻

🧭 Episodic vs Sequential ( MDP View )

Concept	Episodic	Sequential (MDP)
Memory	None	Tracks states
Action Outcome	Independent	Affects future
Goal	Immediate reward	Cumulative reward
Learning	Classification	Reinforcement / policy learning
Framework	—	MDP


⸻

🗣️ Plain Summary

An MDP is how we mathematically model an agent interacting with a changing world — choosing actions, observing results, and learning strategies that maximize long-term success.

⸻

👉🏽 **Static vs. Dynamic environments**

## 🧩 1. Basic Definition

| Type                    | Meaning                                                                    | Key Idea                                                      |
| ----------------------- | -------------------------------------------------------------------------- | ------------------------------------------------------------- |
| **Static Environment**  | The environment **doesn't change** while the agent is deciding what to do. | The world "waits" for the agent to act.                       |
| **Dynamic Environment** | The environment **changes on its own**, even if the agent does nothing.    | The world keeps moving — the agent must act quickly or adapt. |

---

## ⚙️ 2. Examples

### **Static**

* Crossword puzzle:
  The puzzle won't change while you're thinking.
  You can take as long as you want.
* Chess (during your turn):
  The opponent can't move until you finish.

**Implication:**
🧠 The agent can *deliberate* safely — no time pressure.

---

### **Dynamic**

* Driving:
  Traffic moves whether or not you do.
* Stock trading:
  Prices fluctuate while you decide.
* Multiplayer online games:
  The world updates in real time.

**Implication:**
⚡ The agent must *sense and act continuously*, because the environment evolves on its own.

---

## 🧠 3. In AI Terms

| Property                | Static Environment           | Dynamic Environment         |
| ----------------------- | ---------------------------- | --------------------------- |
| **Change over time**    | Only changes when agent acts | Changes even without agent  |
| **Time Pressure**       | None                         | High                        |
| **Planning**            | Can be done leisurely        | Must update constantly      |
| **Real-World Examples** | Puzzles, turn-based games    | Robotics, driving, trading  |
| **AI Design Focus**     | Correctness                  | Responsiveness + Adaptation |

---

## 💻 4. In a *Coding Agentic System*

| Aspect                   | Static Behavior                        | Dynamic Behavior                                              |
| ------------------------ | -------------------------------------- | ------------------------------------------------------------- |
| **Environment**          | Codebase on disk (until you change it) | Cloud APIs, real-time logs, multiple users committing code    |
| **Agent's Action Cycle** | Read → Think → Write (no rush)         | Read → Think → Act while new commits or server changes happen |
| **Design Implication**   | Simple planning                        | Requires monitoring + reactive strategies                     |

So:

* If your coding agent edits a **local repo** with no external changes → **Static**
* If your agent collaborates with **live systems**, **CI/CD pipelines**, or **multi-user repos** → **Dynamic**

---

## ⚖️ 5. Combined View (Episodic/Sequential + Static/Dynamic)

| Dimension      | Static                                | Dynamic                                                 |
| -------------- | ------------------------------------- | ------------------------------------------------------- |
| **Episodic**   | Each episode independent, unchanging  | Each episode independent but world still evolves (rare) |
| **Sequential** | Past affects future, but world pauses | Past affects future, and world evolves continuously     |

Most **real agentic systems** (like your *coding assistant*) are **Sequential + Dynamic**,
meaning:

> The agent's actions affect the future *and* the environment changes independently.

---

## 🎯 6. Summary

> * **Static** = The world waits for you.
> * **Dynamic** = The world moves on without you.
> * **Coding Agentic Systems** often deal with **dynamic environments** because APIs, repositories, and human collaborators can all change while the agent plans its next move.

⸻

## 🧠 1. Transition: From Environment → Architecture

Up to now, you've been studying the **external world**:

* PEAS (Performance, Environment, Actuators, Sensors)
* Environmental properties (Episodic/Sequential, Static/Dynamic, etc.)

Now we look **inside the agent**, at how it:

> maps **percepts → actions**

This is the foundation of *agent architecture* — the internal logic that turns observation into behavior.

---

## ⚙️ 2. Simple Reflex Agents

### 💡 Definition:

A **Simple Reflex Agent** acts *only on the current percept*, ignoring history or memory.

It follows **condition–action rules**:

> *If condition → then action*

This is sometimes called a **"stimulus–response" model**.

---

### 🔍 Example

* A thermostat:

  * *If* temperature < 70°F → *turn heater on*
  * *If* temperature ≥ 70°F → *turn heater off*

* A self-driving car (simplified reflex):

  * *If* object detected in front → *brake*
  * *If* road clear → *accelerate*

---

### ⚠️ Limitations

* **No memory**: Can't learn or adapt.
* **No model**: Doesn't understand *why* things happen.
* **Fails in partially observable or dynamic environments**.

That's why Simple Reflex works best in:

* **Fully observable**, **static**, and **deterministic** environments.

---

### 🧱 In Your Coding Agentic System

A **Simple Reflex Coding Agent** would behave like:

> "If compiler error → fix line 27 and re-run."

It doesn't know why the error happened or remember previous fixes — it reacts *only* to immediate feedback.

This might work for small, well-defined tasks, but it fails for complex projects requiring context and planning.

---

## 🧩 3. Model-Based Reflex Agents

### 💡 Definition:

A **Model-Based Reflex Agent** adds an **internal model of the world** —
it remembers past states and uses them to interpret the current situation.

That means it can operate in **partially observable** or **dynamic** environments.

---

### 🧠 How It Works

The agent maintains:

1. **Internal State (Memory):** What it believes about the world.
2. **Model of the World:** How actions affect states.
3. **Update Function:** Adjusts its internal state based on new perceptions and past actions.

Then it still applies rules, but smarter:

> *If* (perceived state matches condition) → *perform action*
> …but the state is computed from both **sensors + memory.**

---

### 🔍 Example

* A self-driving car:

  * Keeps track of cars behind and ahead.
  * Predicts where they'll be next second.
  * Makes decisions using this "mental map" of the environment.

* A virtual assistant:

  * Remembers your last command and context.
  * Adapts the next action accordingly.

---

### 🧠 In Your Coding Agentic System

A **Model-Based Coding Agent** would:

* Track the current project state.
* Remember previous actions (edits, test results).
* Predict the consequences of its code changes.
* Re-plan if the environment changes (e.g., new errors or updated dependencies).

Example workflow:

1. Reads repo and build errors.
2. Updates internal "project map."
3. Decides which files to modify.
4. Acts and verifies with tests.
5. Updates belief state based on outcome.

That's **model-based reflex** — the first step toward true agentic reasoning.

---

## ⚖️ 4. Comparison Table

| Feature                               | Simple Reflex Agent        | Model-Based Reflex Agent           |
| ------------------------------------- | -------------------------- | ---------------------------------- |
| **Memory**                            | None                       | Yes (internal state)               |
| **Uses model of the world?**          | No                         | Yes                                |
| **Can handle partial observability?** | No                         | Yes                                |
| **Best suited environment**           | Fully observable, static   | Partially observable, dynamic      |
| **Example**                           | Thermostat, rule-based bot | Self-driving car, coding assistant |
| **AI Design Implication**             | Rule engine                | Rule engine + internal model       |

---

## 🧭 5. Key Takeaway

> **Simple Reflex** = reacts to now.
> **Model-Based Reflex** = reacts to now *in light of the past.*

This distinction marks the shift from **reactive agents** to **cognitive agents** —
and it's the foundation for the next topics: *Goal-Based* and *Utility-Based* agents.

⸻

✅ Saving Tip for Faheem
	•	Save this note as Week7_Episodic_Sequential_MDP.md inside Resources/Agentic_AI_Notes/ in Obsidian.
	•	Tag it #AgenticAI #Week7 #MDP #Sequential.