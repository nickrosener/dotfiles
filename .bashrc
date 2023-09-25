# Create virtual environment
alias create-venv='python3 -m venv env'

# Activate virtual environment
alias activate='source env/bin/activate'

# Install pip packages
alias pip-req='pip install --upgrade pip && pip install -r requirements.txt'

# Delete all pip packages
alias pip-del='pip freeze | xargs pip uninstall -y'

# Alias for functions framework local run
# Usage: ff function_name
alias ff='functions-framework-python --target'

# Alias for running python unittest
alias ut='python -m unittest -v'

# Alias for running black formatter on all python files
alias form='black *.py'

# Change directories to up one / two
alias ..='cd ..'
alias ...='cd ../..'

# Show all files in long format
alias ll='ls -al'

# Search with color highlighting
alias grep='grep --color=auto'

#Show disk usage in human-readable format
alias dfh='df -h'

# Clear the terminal
alias c='clear'

# Terminal history
alias h='history'

# Show all directories in PATH, one per line
alias path='echo -e ${PATH//:/\\n}'

# Size of all directories in human-readable format
alias du1='du -h -d 1'

# Prettyprint json
alias jsonpretty='function _jsonpretty() { python -m json.tool $1; }; _jsonpretty'

# Navigate to directory and list files
alias to='function _to() { cd "$@" && tree; }; _to'

# Push current branch to origin
alias gpush='git push origin $(git rev-parse --abbrev-ref HEAD)'

# Git log in more readable format
alias gitlog='git log --graph --oneline --decorate --all'
