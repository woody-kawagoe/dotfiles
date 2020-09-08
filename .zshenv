export LANG=ja_JP.UTF-8
export PYENV_ROOT="$HOME/.pyenv"
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin
export PATH=$PATH:$HOME/.nodebrew/current/bin
export PATH=$PATH:$PYENV_ROOT/bin
export PATH=$PATH:/usr/local/google/google-cloud-sdk/bin
export GCLOUD_PATH=/usr/local/google/google-cloud-sdk/platform/google_appengine/
export PYTHONPATH=$PYTHONPATH:/usr/local/google/google-cloud-sdk/platform/google_appengine/
export LESSOPEN='| /usr/local/bin/src-hilite-lesspipe.sh %s'
export BROWSER=open
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
