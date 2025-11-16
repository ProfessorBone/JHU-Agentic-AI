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
