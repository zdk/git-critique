#!/usr/bin/env bash
set -eu

preferred=("$HOME/.local/bin" "$HOME/bin" "$HOME/.bin" "/usr/local/bin")
bin=""

# try preferred user directories first
for dir in "${preferred[@]}"; do
  if echo "$PATH" | tr ':' '\n' | grep -qx "$dir"; then
    mkdir -p "$dir"
    bin="$dir"
    break
  fi
done

# fall back to first writable directory in PATH
if [[ -z "$bin" ]]; then
  for dir in $(echo "$PATH" | tr ':' '\n'); do
    if [[ -d "$dir" && -w "$dir" && "$dir" != "." ]]; then
      bin="$dir"
      break
    fi
  done
fi

if [[ -z "$bin" ]]; then
  echo "No writable directory found in PATH."
  echo "Create one and add it to your shell profile:"
  echo '  mkdir -p ~/.local/bin && export PATH="$HOME/.local/bin:$PATH"'
  exit 1
fi

chmod +x git-critique
ln -sf "$(pwd)/git-critique" "$bin/git-critique"
echo "Installed to $bin/git-critique"
