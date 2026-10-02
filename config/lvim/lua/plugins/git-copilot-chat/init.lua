return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    branch = "main",
    build = "make tiktoken",
    cmd = {
      "CopilotChat",
      "CopilotChatAgents",
      "CopilotChatModels",
      "CopilotChatOpen",
      "CopilotChatPrompts",
      "CopilotChatReset",
      "CopilotChatToggle",
    },
    dependencies = {
      { "nvim-lua/plenary.nvim" },
    },
    opts = {
      answer_header = "  Copilot  ",
      auto_insert_mode = true,
      model = "claude-opus-4.7",
      prompts = {
        RenameVariable = {
          prompt = "Suggest 5 descriptive, idiomatic names for the variable on the selected line. Explain each briefly, then show the refactored line for each option.",
          context = "line",
          mapping = "<leader>ar",
          description = "Rename variable on current line",
        },
      },
      question_header = "  User  ",
      sticky = {
        "#file:.rubocop.yml",
        "#file:.Gemfile",
        "Follow the RuboCop rules in .rubocop.yml. This is a Rails 7.2 project; prefer Rails idoms and conventions.",
        "Your responses should be concise and focus on the code. Avoid lengthy explanations unless I ask for them.",
      },
      temperature = 0.1,
      window = {
        layout = "vertical",
        width = 0.4,
      },
    },
    keys = {
      { "<leader>aa", "<cmd>CopilotChatToggle<cr>", desc = "AI Toggle Chat" },
      { "<leader>as", "<cmd>CopilotChatStop<cr>", desc = "AI Stop Response" },
      { "<leader>ax", "<cmd>CopilotChatReset<cr>", desc = "AI Reset Chat" },
      { "<leader>am", "<cmd>CopilotChatModels<cr>", desc = "AI Select Model" },
      {
        "<leader>ae",
        function()
          local input = vim.fn.input("Explain: ")
          if input ~= "" then
            require("CopilotChat").ask(input, { context = "buffer" })
          end
        end,
        desc = "AI Ask About Buffer",
      },
      {
        "<leader>ac",
        function()
          require("CopilotChat").ask("Review this selection and suggest improvements.", {
            context = "selection",
          })
        end,
        mode = "x",
        desc = "AI Review Selection",
      },
    },
  },
}
