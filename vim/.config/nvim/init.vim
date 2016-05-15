let $NVIM_CFG = "~/.config/nvim/config" 

for f in glob(expand("$NVIM_CFG") . '/*.vim', 1, 1)   | exe 'source' f | endfor
