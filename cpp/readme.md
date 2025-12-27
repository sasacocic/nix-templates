
this is largely copied from my bustub configuration, but the main thing here is the usage of 'packages', which is different from `buildInputs` for `mkShell` - I need packages, because without it the wrong version of llvm is read in my path
