require 'colorizer'.setup{
    buftypes = {"*"},
    user_default_options = {
        mode = "virtualtext";
        RGB = true,
        RRGGBB = true,
        names = true,
        RRGGBBAA = true,
        AARRGGBB = true,
        rgb_fn = true,
        hsl_fn = true,
        css = true,
        css_fn = true,
        tailwind = true,
        sass = { enable = true, parsers = { "css" }, },
        virtualtext = "■",
        always_update = false
    }

}
