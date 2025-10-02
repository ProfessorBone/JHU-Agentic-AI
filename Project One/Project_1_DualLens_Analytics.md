# Project 1 - DualLens Analytics

## Background Story

In the rapidly evolving world of finance and technology, investors are constantly seeking ways to make smarter decisions by combining traditional financial analysis with emerging technological insights. While stock market trends provide a numerical perspective on growth, an organization's initiatives in cutting-edge fields like Artificial Intelligence (AI) reveal its future readiness and innovation potential. However, analyzing both dimensions - quantitative financial performance and qualitative AI initiatives - requires sifting through multiple, diverse data sources: stock data from platforms like Yahoo Finance, reports in PDFs, and contextual reasoning using Large Language Models (LLMs).

This is where DualLens Analytics comes in. By applying a dual-lens approach, the project leverages Retrieval-Augmented Generation (RAG) to merge financial growth data with strategic insights from organizational reports. Stock data provides evidence of stability and momentum, while AI initiative documents reveal forward-looking innovation. Together, they form a richer, more holistic picture of organizational potential.

With DualLens Analytics, investors no longer need to choose between numbers and narratives, they gain a unified, AI-driven perspective that ranks organizations by both financial strength and innovation readiness, enabling smarter, future-focused investment strategies.

## Problem Statement

Traditional investment analysis often focuses on financial metrics alone (e.g., stock growth, revenue, market cap), missing the qualitative dimension of how prepared a company is for the future. On the other hand, qualitative documents like strategy PDFs contain valuable insights about innovation and AI initiatives, but they are difficult to structure, query, and integrate with numeric financial data.

This leads to three core challenges:

**Fragmented Data Sources**: Financial data (stock prices) and strategic insights (PDFs) exist in silos.

**Limited Analytical Scope**: Manual analysis of growth trends and PDF reports is time-consuming and error-prone.

**Decisional Blind Spots**: Without integrating both quantitative (growth trends) and qualitative (AI initiatives) signals, investors may miss out on high-potential organizations.

## Solution Approach

To address this challenge, we set out to build a Retrieval-Augmented Generation (RAG) powered system that blends financial trends with AI-related strategic insights, helping investors rank organizations based on growth trajectory and innovation capacity.

---

**Note**: You need to look for "--- --- ---" and add your code over there, this is a placeholder.

**Note**: For project submission, please provide the project in HTML format. Refer to the "Guidelines: Converting IPYNB to HTML Files.pdf" for instructions.

## Rubric

### Setting up LLM
**Criteria**
1. Loading the config.json file
2. Defining the LLM function

**Points**: 1

---

### Visualization and Insight Extraction
**Criteria**
1. Plot of closing prices for 3 years - 1 mark
2. Gathering data of Financial Metrics - 2 marks
3. Converting financial metrics to a Dataframe - 1 mark
4. Plot a bar graph of Financial Metrics - 1 mark

**Points**: 5

---

### RAG-Driven Analysis
**Criteria**
1. Loading Company AI Initiative Documents (PDFs) - 1 mark
2. Vectorizing AI Initiative Documents with ChromaDB - 1 mark
3. Retrieving relevant Documents - 3 marks
   - 3.1. Craft the qna_system_message - 1 mark
   - 3.2. Define RAG function - 1 mark
   - 3.3. Call RAG on the defined test cases - 1 mark
4. Evaluation of the RAG - 2 marks
   - 4.1. Groundedness score output - 1 mark
   - 4.2. Relevance score output - 1 mark

**Points**: 7

---

### Scoring and Ranking
**Criteria**
1. Draft system message - 1 mark
2. Draft user message - 1 mark
3. Company Ranking and Recommendation - 1 mark

**Points**: 3

---

### Summary and Recommendations
**Criteria**
1. Summary / Your observations on this Project - 2 Marks
2. Recommendations / What improvements can be made to this Project - 2 Marks

**Points**: 4

---

**Total Points**: 20