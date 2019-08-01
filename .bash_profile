#
# ~/.bash_profile
#

#[[ -f ~/.bashrc ]] && . ~/.bashrc


clear

cat << "EOF"
					¡Bienvenido!
				 ╦┌─┐┌─┐┌─┐  ╔═╗┌─┐┌─┐┬ ┬
				 ║│ │└─┐├┤   ╠═╝├─┤│  ├─┤
				╚╝└─┘└─┘└─┘  ╩  ┴ ┴└─┘┴ ┴ 
EOF


source ~/.ayudaPartners.sh

function gitInit() {
	git add -A
	git commit -m "Commit Inicial"
	git remote origin https://github.com/paching12/bashrc.git 
	git push -u origin --all
}	#end gitInit

function download_git_autocomplete() {
	
	RED='\033[0;31m'
	GREEN='\033[0;32m'
	NC='\033[0m' # No Color

	URL=https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
	echo "${GREEN}Descargando...${NC}"
	wget --tries=2 -P ~/ "${URL}"

	echo "source ~/git-completion.bash" >> ~/.bashrc
 }	# end autocomplete
