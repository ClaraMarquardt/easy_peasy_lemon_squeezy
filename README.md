# epls

Repo with useful shell helper functions

**Install** 


```
## Option - A: Using a shell package manager

# Install a shell package manager
git clone https://github.com/basherpm/basher.git ~/.basher
echo 'export PATH="$HOME/.basher/bin:$PATH"' >> ~/.bash_profile # May need to modify  the ~/.zshrc OR ~/.bashrc file instead of the ~/.bash_profile
echo 'eval "$(basher init -)"' >> ~/.bash_profile

# Install package from GitHub
basher install claramarquardt/easy_peasy_lemon_squeezy

## Option - B: Manually

# Clone the repo
git clone https://github.com/claramarquardt/easy_peasy_lemon_squeezy.git ~/.easy_peasy_lemon_squeezy

# Install the functions
echo 'for f in "$HOME/.easy_peasy_lemon_squeezy/*.sh"; do source $f; done' >> ~/.bash_profile # May need to modify  the ~/.zshrc OR ~/.bashrc file instead of the ~/.bash_profile

```  

**Documentation**
- Work in progress

