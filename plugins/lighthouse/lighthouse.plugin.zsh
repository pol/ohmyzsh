<<<<<<< HEAD
# To use: add a .lighthouse file into your directory with the URL to the
# individual project. For example:
# https://rails.lighthouseapp.com/projects/8994
# Example usage: http://screencast.com/t/ZDgwNDUwNT
=======
>>>>>>> origin/master
open_lighthouse_ticket () {
  if [ ! -f .lighthouse-url ]; then
    echo "There is no .lighthouse-url file in the current directory..."
    return 0
  fi

  lighthouse_url=$(cat .lighthouse-url)
  echo "Opening ticket #$1"
  open_command "$lighthouse_url/tickets/$1"
}

alias lho='open_lighthouse_ticket'
