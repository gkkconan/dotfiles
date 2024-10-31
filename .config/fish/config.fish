if status is-interactive
    # Commands to run in interactive sessions can go here
end
fish_add_path ~
# set fish_greeting ""

###----- ALIASES -----###
alias vim=nvim

###----- FUNCTIONS -----###
function obsidian
	nohup /var/lib/flatpak/app/md.obsidian.Obsidian/aarch64/stable/7b879abbc0a5e2686b07b15c8fe3fde870a963fe7a4194a7d5286c14b0670256/export/bin/md.obsidian.Obsidian > /dev/null 2>&1 &
	disown
end

function fish_greeting
	echo 'Welcome'(set_color DF1722) $USER ':)'
end
