# 🚀 DualLens Analytics - AI-Driven Investment Analysis System
## Johns Hopkins University - Agentic AI Certificate Program

[![Project Status](https://img.shields.io/badge/Status-In%20Development-yellow.svg)](https://github.com/ProfessorBone/JHU-Agentic-AI)
[![AI Framework](https://img.shields.io/badge/AI-GPT--4o%20%7C%20Graph--RAG-blue.svg)](https://openai.com/gpt-4)
[![Python](https://img.shields.io/badge/Python-3.13+-green.svg)](https://python.org)
[![License](https://img.shields.io/badge/License-Academic-lightgrey.svg)](LICENSE)

---

## 🎯 Project Overview

**DualLens Analytics** represents a revolutionary fusion of artificial intelligence and investment analysis, designed to transform how we evaluate companies for investment decisions. This system implements a sophisticated **Graph-RAG enhanced dual-lens approach** that creates knowledge graphs from company AI initiatives while simultaneously analyzing financial time-series data.

### 🏆 Core Innovation

Our system is the first investment analysis platform that combines:

- **📊 Quantitative Financial Intelligence**: Advanced time-series analysis of stock performance, volatility patterns, and financial metrics
- **🧠 Qualitative AI Initiative Assessment**: Deep analysis of company AI strategies, innovation potential, and competitive positioning  
- **🕸️ Graph-RAG Architecture**: Knowledge graph construction capturing relationships between companies, AI projects, technologies, and market impacts
- **⚖️ Unified Investment Scoring**: Multi-dimensional algorithm combining financial performance with AI strategy assessment

---

## 🏗️ Technical Architecture

### Phase 1: Foundation Infrastructure ✅

- **Environment Setup**: Comprehensive package installation and verification
- **Organization Selection**: Strategic selection of 5 tech leaders (NVDA, MSFT, GOOGL, AMZN, IBM)
- **LLM Configuration**: GPT-4o integration with Great Learning proxy, optimized for investment analysis

### Phase 2A: Strategic Investment Universe ✅

- **Company Profiling**: Detailed AI focus and competitive advantage analysis for each target organization
- **Investment Rationale**: Strategic justification for each company selection with market positioning
- **LLM Infrastructure**: Advanced configuration with fallback strategies and error handling

### Phase 2B: Financial Intelligence Engine ✅

- **Market Data Architecture**: yfinance integration with 5+ years historical data acquisition
- **Advanced Financial Metrics**: Total returns, volatility, Sharpe ratio, maximum drawdown analysis
- **Risk Assessment Framework**: Comprehensive risk-adjusted performance evaluation
- **Professional Reporting**: Investment-grade summary tables and performance indicators

### Phase 2C: Financial Data Visualization 🔄

- **Interactive Dashboards**: Advanced plotly visualizations for investment presentation
- **Comparative Analysis**: Multi-company performance charts and correlation matrices
- **Risk-Return Mapping**: Scatter plots and portfolio optimization visualizations

### Phase 3: AI Initiative Knowledge Graph 🔄

- **Document Processing**: PDF parsing and intelligent chunking of AI initiative documents
- **Entity Extraction**: Identification of AI projects, technologies, partnerships, and strategic indicators
- **Graph Construction**: Multi-layered knowledge graph with temporal relationships

### Phase 4: Graph-RAG Implementation 🔄
- **Vector Database**: ChromaDB integration with advanced metadata strategies
- **Graph-Enhanced Retrieval**: Multi-hop reasoning and relationship-aware search
- **Contextual Analysis**: Cross-company AI initiative comparison and trend identification

### Phase 5: Investment Intelligence Engine 🔄
- **DualLens Scoring**: 100-point algorithm combining financial (40pts) + AI strategy (35pts) + integration synergy (25pts)
- **Portfolio Optimization**: Risk-adjusted ranking and allocation recommendations
- **Investment Thesis Generation**: Automated research reports with confidence intervals

---

## 🎛️ Advanced Features

### 🧠 Intelligent Prompt Engineering
Our system implements 8 specialized prompts following conversational instruction patterns:

1. **Entity Extraction**: AI initiative analysis with investment relevance scoring
2. **Financial-AI Correlation**: Bridge quantitative metrics with qualitative insights
3. **Query Intelligence**: Transform basic questions into comprehensive research strategies
4. **Multi-Source Synthesis**: Combine fragmented information into coherent investment insights
5. **DualLens Scoring**: Objective, repeatable investment scoring algorithm
6. **Portfolio Optimization**: Comparative ranking with risk diversification
7. **Analysis Validation**: Quality control ensuring institutional-grade standards
8. **Source Grounding**: Fact-checking system preventing hallucination

### 📊 Multi-Layer Metadata Strategy

**Document Level**:
```json
{
  "company_ticker": "NVDA",
  "document_type": "quarterly_earnings_call",
  "publication_date": "2024-Q3",
  "ai_initiative_density": 0.82
}
```

**Chunk Level**:
```json
{
  "ai_category": ["computer_vision", "generative_ai"],
  "project_stage": "scaling",
  "investment_amount": "$2.5B",
  "competitive_advantage": "high"
}
```

**Graph Entity Level**:
```json
{
  "entity_type": "ai_project",
  "relationships": {
    "company": "NVDA",
    "competitors": ["AMD", "Intel"],
    "technologies": ["GPU", "parallel_computing"]
  }
}
```

---

## 🚀 Technology Stack

### Core Dependencies
- **Data Science**: `pandas`, `numpy`, `matplotlib`, `plotly`, `scikit-learn`
- **Financial Data**: `yfinance` for market data acquisition
- **AI/ML Framework**: `openai`, `langchain`, `sentence-transformers`
- **Vector Database**: `chromadb` for embeddings and retrieval
- **Graph Processing**: `networkx`, `graphviz` for knowledge graphs
- **Document Processing**: `pypdf` for AI initiative document analysis

### Development Environment
- **Python**: 3.13+ with virtual environment
- **LLM Infrastructure**: GPT-4o via Great Learning OpenAI proxy
- **Configuration**: JSON-based API management with environment fallbacks
- **Version Control**: Git with comprehensive commit history

---

## 📁 Project Structure

```
Project One/
├── README.md                                    # This comprehensive guide
├── Project_Design.md                           # Detailed architecture and prompt strategy
├── JHU_AgenticAI_Project_1_Learners_Notebook.ipynb  # Main implementation notebook
├── config.json                                 # API configuration (not tracked)
├── Companies-AI-Initiatives.zip                # Source documents for analysis
└── Guidelines - Converting IPYNB to HTML files.pdf
```

---

## 🎯 Target Investment Universe

Our carefully selected organizations represent diverse AI market segments:

| Company | Ticker | AI Focus | Competitive Advantage |
|---------|--------|----------|----------------------|
| **NVIDIA** | NVDA | AI Hardware & Compute Infrastructure | Hardware acceleration leadership |
| **Microsoft** | MSFT | Enterprise AI & Cloud Computing | Enterprise integration and cloud platform |
| **Alphabet** | GOOGL | Search AI & Consumer Products | Massive data assets and search monopoly |
| **Amazon** | AMZN | E-commerce AI & Cloud Services | Operational AI integration and cloud infrastructure |
| **IBM** | IBM | Enterprise AI Solutions | Enterprise relationships and industry-specific AI |

---

## 🚦 Getting Started

### Prerequisites
- Python 3.13+ with virtual environment support
- Great Learning OpenAI API access (API_KEY and OPENAI_API_BASE)
- Git for version control

### Quick Setup
1. **Activate Virtual Environment**:
   ```bash
   source agentic_ai_env/bin/activate
   ```

2. **Install Dependencies** (handled by notebook):
   - Core data science packages
   - AI/ML and RAG infrastructure
   - Graph processing capabilities
   - Document processing utilities

3. **Configure API Access**:
   ```json
   {
     "API_KEY": "your-great-learning-api-key",
     "OPENAI_API_BASE": "your-api-base-url"
   }
   ```

4. **Launch Jupyter**:
   ```bash
   jupyter notebook JHU_AgenticAI_Project_1_Learners_Notebook.ipynb
   ```

---

## 📊 Implementation Progress

- ✅ **Phase 1**: Environment setup and foundation infrastructure
- ✅ **Phase 2A**: Organization selection and LLM configuration
- ✅ **Phase 2B**: Financial intelligence engine - market data acquisition framework
- 🔄 **Phase 2C**: Financial data visualization and analysis dashboard
- 🔄 **Phase 3**: AI initiative knowledge graph construction
- 🔄 **Phase 4**: Graph-RAG implementation and optimization
- 🔄 **Phase 5**: Investment scoring and portfolio recommendations

---

## 🎓 Academic Excellence

This project demonstrates mastery of:

- **Advanced RAG Architectures**: Graph-RAG implementation with multi-hop reasoning
- **Financial Analysis**: Quantitative investment metrics and risk assessment
- **AI Strategy Evaluation**: Qualitative analysis of corporate AI initiatives
- **Prompt Engineering**: Conversational instruction patterns with role-based design
- **Software Engineering**: Production-ready code with comprehensive documentation
- **Investment Theory**: Portfolio optimization and strategic asset allocation

---

## 🔬 Research Innovation

**DualLens Analytics** introduces several novel concepts:

1. **First Graph-RAG Application in Investment Analysis**: Revolutionary approach to financial intelligence
2. **Dual-Lens Methodology**: Systematic combination of quantitative and qualitative intelligence
3. **AI Initiative Scoring**: Structured approach to evaluating corporate AI strategies
4. **Temporal Graph Evolution**: Dynamic analysis of AI strategy development over time
5. **Cross-Company Intelligence**: Competitive landscape analysis through graph relationships
6. **Role-Based Prompt Engineering**: Conversational instruction patterns optimized for investment analysis

### 🏗️ Notebook Architecture & Implementation Quality

Our implementation demonstrates advanced software engineering practices:

- **Modular Design**: Clean separation between foundation setup, data acquisition, and analysis phases
- **Comprehensive Error Handling**: Robust systems for API failures, data acquisition issues, and configuration problems
- **Professional Documentation**: Each phase introduced with detailed role-based prompts following academic standards
- **Production-Ready Code**: Enterprise-grade configuration management with fallback strategies
- **Streamlined Flow**: Eliminated redundant cells and consolidated related functionality for optimal user experience
- **Investment-Grade Reporting**: Professional summary tables and metrics formatting for institutional presentation

---

## 📈 Expected Outcomes

### Deliverables
1. **Interactive Financial Dashboard**: Real-time analysis with advanced visualizations
2. **Graph-RAG Knowledge System**: Sophisticated AI initiative analysis engine
3. **Investment Ranking Algorithm**: Multi-factor company scoring with confidence intervals
4. **Strategic Investment Report**: Comprehensive analysis with actionable recommendations

### Innovation Impact
- Demonstrates the future of AI-driven investment decision-making
- Establishes new standards for combining quantitative and qualitative analysis
- Provides replicable methodology for institutional investment research
- Showcases advanced prompt engineering in financial applications

---

## 🤝 Contributing

This is an academic project for the Johns Hopkins University Agentic AI Certificate Program. For questions or collaboration:

- **Student**: Faheem (ProfessorBone)
- **Institution**: Johns Hopkins University
- **Program**: Agentic AI Certificate
- **Repository**: [JHU-Agentic-AI](https://github.com/ProfessorBone/JHU-Agentic-AI)

---

## 📜 License

This project is developed for academic purposes as part of the Johns Hopkins University Agentic AI Certificate Program. All code and documentation are provided for educational use.

---

*"In the intersection of artificial intelligence and financial markets lies the future of investment decision-making."*

**🚀 Building the future of AI-driven investment intelligence, one algorithm at a time.**