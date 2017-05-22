#!/bin/sh
if test "$(which code)"; then
  if [ "$(uname -s)" = "Darwin" ]; then
    VSCODE_HOME="$HOME/Library/Application Support/Code"
  else
    VSCODE_HOME="$HOME/.config/Code"
  fi

  ln -s "$DOTFILES/vscode/User" "$VSCODE_HOME/User"
  # ln -sf "$DOTFILES/vscode/settings.json" "$VSCODE_HOME/User/settings.json"
  # ln -sf "$DOTFILES/vscode/keybindings.json" "$VSCODE_HOME/User/keybindings.json"

  # from `code --list-extensions`
  modules="
    EditorConfig.EditorConfig
    PKief.material-icon-theme
    PeterJausovec.vscode-docker
    aaronthomas.vscode-snazzy-operator
    alefragnani.project-manager
    andrejunges.Handlebars
    christian-kohler.npm-intellisense
    christian-kohler.path-intellisense
    dbaeumer.vscode-eslint
    donjayamanne.githistory
    eg2.vscode-npm-script
    formulahendry.auto-close-tag
    idleberg.applescript
    joshpeng.sublime-babel-vscode
    joshpeng.theme-charcoal-oceanicnext
    joshpeng.theme-onedark-sublime
    lukehoban.Go
    msjsdiag.debugger-for-chrome
    naumovs.color-highlight
    rebornix.Ruby
    samverschueren.linter-xo
  "
  for module in $modules; do
    code --install-extension "$module" || true
  done
fi
