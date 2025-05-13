#OG Author : Heapbytes <Gourav> (https://github.com/heapbytes)
# Forked by waspJelly (https://github.com/waspJelly/heapnips-zsh)

#PROMPT='
#┌─[%B%F{9}༺%f%b  %F{129}%n%f%F{40}۞  %f%F{129}%m%f%B%F{9} ༻%f%b  ⇉ %F{202}%*%f] [%F{green} $(get_ip_address)%f] $(git_prompt_info)
#└─➜ '

# SPACING SEEMS MORE APPROPRIATE HERE
#PROMPT='
#┌─[%B%F{9}༺%f%b  %F{129}%n%f%F{40}۞  %f%F{129}%m%f%B%F{9}༻%f%b  ⇉ %F{202}%*%f] [%F{green} $(get_ip_address)%f] $(git_prompt_info)
#└─➜ '

# JUST IP AND USERNAME + TIME
#PROMPT='
#┌─[%F{green} $(get_ip_address)%f] [%B%F{9}༺%f%b  %F{129}%n%f %B%F{9}༻%f%b ⇉ %F{202}%*%f]  $(git_prompt_info)
#└─➜ '

# JUST IP AND USERNAME + TIME -- needs fixed spacing
PROMPT='
┌─[%F{green} $(get_ip_address)%f] [%B%F{9}༺ %f%b %F{129}%n%f%B%F{9}༻%f  ⇉ %F{202}%*%f]  $(git_prompt_info)
└─➜ '

RPROMPT='[%F{red}%?%f]'

get_ip_address() {
  if [[ -n "$(ifconfig tun0 2>/dev/null)" ]]; then
    echo "%{$fg[green]%}$(ifconfig tun0 | awk '/inet / {print $2}')%{$reset_color%}"
  elif [[ -n "$(ifconfig wlo1 2>/dev/null)" ]]; then
    echo "%{$fg[green]%}$(ifconfig wlo1 | awk '/inet / {print $2}')%{$reset_color%}"
  else
    echo "%{$fg[red]%}No IP%{$reset_color%}"
  fi
}


