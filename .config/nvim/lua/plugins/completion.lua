return {
  {
    "saghen/blink.cmp",
    opts = function(_, opts)
      opts.keymap = {
        preset = "default",
        ["<Tab>"] = {
          function(cmp)
            -- Check if Copilot suggestion is visible
            local copilot_ok, copilot_suggestion = pcall(require, "copilot.suggestion")
            if copilot_ok and copilot_suggestion.is_visible() then
              copilot_suggestion.accept()
            elseif cmp.snippet_active() then
              return cmp.accept()
            else
              return cmp.select_and_accept()
            end
          end,
          "snippet_forward",
          "fallback",
        },
        ["<S-Tab>"] = { "select_prev", "snippet_backward", "fallback" },
      }
      return opts
    end,
  },
}
