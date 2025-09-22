# Python Environment Setup for Agentic AI

## 🎓 Johns Hopkins University - Agentic AI Certificate Program

This document describes the Python environment setup for your Agentic AI learning journey.

## 📦 Environment Details

- **Environment Name**: `agentic_ai_env`
- **Python Version**: 3.13.7
- **Location**: `/Users/faheem/Documents/Greater Learning/Agentic AI/agentic_ai_env`
- **Jupyter Kernel**: "Agentic AI (Python 3.13)"

## 🚀 Quick Start

### Activate Environment
```bash
# Method 1: Using the activation script
./activate_env.sh

# Method 2: Manual activation
source agentic_ai_env/bin/activate
```

### Launch Jupyter
```bash
# Start JupyterLab (recommended)
jupyter lab

# Or start classic Jupyter Notebook
jupyter notebook
```

### Deactivate Environment
```bash
deactivate
```

## 📚 Installed Packages

### Core Data Science & ML
- `numpy` - Numerical computing
- `pandas` - Data manipulation and analysis
- `matplotlib` - Data visualization
- `seaborn` - Statistical data visualization
- `scikit-learn` - Machine learning library
- `scipy` - Scientific computing
- `statsmodels` - Statistical modeling

### Jupyter & Interactive Development
- `jupyter` - Jupyter notebook environment
- `jupyterlab` - Next-generation notebook interface
- `ipykernel` - IPython kernel for Jupyter
- `ipywidgets` - Interactive widgets

### AI & Machine Learning
- `openai` - OpenAI API client
- `langchain` - Framework for developing with LLMs
- `langchain-community` - Community integrations
- `langchain-openai` - OpenAI integrations
- `transformers` - Hugging Face transformers
- `torch` - PyTorch deep learning framework
- `spacy` - Advanced NLP library

### Agent Development
- `autogen-agentchat` - Multi-agent conversation framework
- `crewai` - AI agent collaboration platform
- `pydantic` - Data validation and settings management
- `python-dotenv` - Environment variable management

### Data Visualization
- `plotly` - Interactive visualization
- `dash` - Web application framework

### Development Tools
- `pytest` - Testing framework
- `black` - Code formatter
- `flake8` - Code linter

## 🔧 VS Code Integration

The environment is automatically detected by VS Code. To use it:

1. Open a `.py` file or notebook
2. Click on the Python version in the status bar
3. Select "Agentic AI (Python 3.13)" as your interpreter

## 🛠 Adding New Packages

```bash
# Activate environment first
source agentic_ai_env/bin/activate

# Install new package
pip install package_name

# Update requirements.txt
pip freeze > requirements.txt
```

## 🐛 Troubleshooting

### Kernel Not Appearing in Jupyter
```bash
# Reinstall the kernel
python -m ipykernel install --user --name=agentic_ai_env --display-name="Agentic AI (Python 3.13)"
```

### Environment Issues
```bash
# Recreate environment
rm -rf agentic_ai_env
python3 -m venv agentic_ai_env
source agentic_ai_env/bin/activate
pip install -r requirements.txt
```

### Package Installation Issues
```bash
# Upgrade pip first
pip install --upgrade pip

# Install with verbose output
pip install -v package_name
```

## 📁 Project Structure

```
Agentic AI/
├── agentic_ai_env/           # Virtual environment
├── requirements.txt          # Package dependencies
├── activate_env.sh          # Environment activation script
├── .gitignore              # Git ignore file
├── README.md               # Project documentation
├── Overview/               # Course overview materials
├── Pre Work/              # Pre-course materials
├── Prompt Engineering Foundations/  # Week 1 content
├── Introduction to Agentic AI Design/  # Future modules
└── Designing and Building Agentic Systems/  # Future modules
```

## 🎯 Learning Path

This environment supports the complete Johns Hopkins University Agentic AI Certificate Program:

1. **Pre Work** - Python fundamentals with Generative AI
2. **Prompt Engineering Foundations** - Week 1: Shopping Cart Management
3. **Introduction to Agentic AI Design** - Core concepts and principles
4. **Designing and Building Agentic Systems** - Advanced implementations

## 📞 Support

For environment-related issues:
1. Check this documentation
2. Review the troubleshooting section
3. Recreate the environment if needed
4. Consult the Great Learning platform resources

---

**Happy Learning! 🚀**  
*Johns Hopkins University - Agentic AI Certificate Program*