vim.api.nvim_create_user_command(
  "PrEdit",
  function(conf)
    require('projector').edit(conf.args)
  end,
  { nargs=1 }
)

vim.api.nvim_create_user_command(
  "PrLoad",
  function(conf)
    require('projector').load(conf.args)
  end,
  { nargs=1 }
)
