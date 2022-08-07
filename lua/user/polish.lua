return function()
  vim.filetype.add {
    extension = {
      tf = "terraform",
      tfvars = "terraform-vars",
    },
  }
end
