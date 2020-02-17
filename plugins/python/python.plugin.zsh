# Find python file
alias pyfind='find . -name "*.py"'

<<<<<<< HEAD
# Remove python compiled byte-code in either current directory or in a
# list of specified directories
=======
# Remove python compiled byte-code and mypy/pytest cache in either the current
# directory or in a list of specified directories (including sub directories).
>>>>>>> origin/master
function pyclean() {
    ZSH_PYCLEAN_PLACES=${*:-'.'}
    find ${ZSH_PYCLEAN_PLACES} -type f -name "*.py[co]" -delete
    find ${ZSH_PYCLEAN_PLACES} -type d -name "__pycache__" -delete
<<<<<<< HEAD
=======
    find ${ZSH_PYCLEAN_PLACES} -depth -type d -name ".mypy_cache" -exec rm -r "{}" +
    find ${ZSH_PYCLEAN_PLACES} -depth -type d -name ".pytest_cache" -exec rm -r "{}" +
>>>>>>> origin/master
}

# Grep among .py files
alias pygrep='grep -r --include="*.py"'

