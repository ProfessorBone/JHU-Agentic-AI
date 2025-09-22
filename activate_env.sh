#!/bin/bash

# Agentic AI Environment Activation Script
# This script activates the Python environment for your Agentic AI learning

echo "🤖 Activating Agentic AI Environment..."
echo "📍 Location: $(pwd)"

# Activate the virtual environment
source agentic_ai_env/bin/activate

# Display environment information
echo "✅ Environment activated successfully!"
echo "🐍 Python version: $(python --version)"
echo "📦 Environment: agentic_ai_env"
echo ""
echo "📚 Available commands:"
echo "  • jupyter lab          - Start JupyterLab"
echo "  • jupyter notebook     - Start Jupyter Notebook"
echo "  • python               - Python interpreter"
echo "  • deactivate          - Exit environment"
echo ""
echo "🎯 Johns Hopkins University - Agentic AI Certificate Program"
echo "🏫 Ready for your learning journey!"