return {
  window = {
    width = 40,
  },
  event_handlers = {
    {
      event = "file_opened",
      handler = function(_)
        -- auto close
        require("neo-tree").close_all()
      end
    },
  },
}
