
function zvm_after_init() {
  # Zsh-Vi-Mode
  ZVM_LINE_INIT_MODE=$ZVM_MODE_INSERT
  zvm_bindkey viins '^f' forward-word
}

