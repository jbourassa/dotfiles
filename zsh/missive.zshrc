# vi: ft=zsh

alias ma="MA_UPDATE=1 ~/.local/bin/mise exec ruby@$(cat ~/.ruby-version) -- ~/src/ma/exe/ma"

# AWS_PROFILE
store_aws_profile() { echo $1 > ~/.aws__profile }
apply_aws_profile() { export AWS_PROFILE=$(cat ~/.aws__profile) }

awsp() {
  if grep -q "\[profile $1\]" ~/.aws/config; then
    store_aws_profile $1 && apply_aws_profile
  else
    echo "\"[profile $1]\" not found in ~/.aws/config"
    return 1
  fi
}
test -e ~/.aws__profile && apply_aws_profile

# Newer file
export PATH="/opt/homebrew/opt/file-formula/bin:$PATH"

export PATH="/opt/homebrew/opt/postgresql@17/bin:$PATH"

export SKIP_COVERAGE=1

eval "$(nodenv init - --no-rehash zsh)"
