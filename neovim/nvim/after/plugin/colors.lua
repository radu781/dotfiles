function ColorMyPencils(color)
    color = color or "catppuccin"
    -- broken on windows
    -- vim.cmd.colorsheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalSB", { bg = "none" })
    vim.api.nvim_set_hl(0, "Normalfloat", { bg = "none" })

end

ColorMyPencils()

