# Ag first: get the first file returned by some ag query
agf() {
  echo $(ag $@ | awk 'NR==1' | sed 's/:.*$//')
}

# Ag lucky: open the first file returned by some aq query with vim
agl() {
  $EDITOR $(agf $@)
}

# Copy the working directory the clipboard
wdcopy() {
  pwd | tr -d '\n' | pbcopy
}
