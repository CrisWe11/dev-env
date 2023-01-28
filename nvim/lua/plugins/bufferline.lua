--[[ local highlights = require("nord").bufferline.highlights({
    italic = true,
    bold = true,
    fill = "#181c24",
}) ]]

require("bufferline").setup{    
    options={
        separator_style = "padded_slant",
        indicator = {
            style = 'underline',
        }
    },
}
