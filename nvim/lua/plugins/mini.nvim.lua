return {
  'echasnovski/mini.nvim',
  version = '*',
  config = function()
    require("mini.indentscope").setup({
      symbol = "┊"
    })
    require("mini.pairs").setup()
    require('mini.hipatterns').setup()
    require('mini.comment').setup()
    require('mini.misc').setup()
    require('mini.starter').setup({
      header = [[
      ,l;             c,      
   .:ooool'           loo:.   
 .,oooooooo:.         looooc, 
ll:,loooooool,        looooool
llll,;ooooooooc.      looooooo
lllllc,coooooooo;     looooooo
lllllll;,loooooool'   looooooo
lllllllc .:oooooooo:. looooooo
lllllllc   'loooooool,:ooooooo
lllllllc     ;ooooooooc,cooooo
lllllllc      .coooooooo;;looo
lllllllc        ,loooooool,:ol
 'cllllc         .:oooooooo;. 
   .;llc           .loooo:.   
      ,;             ;l;      
      ]]
    })
  end
}
