declare-option -hidden str im_default_im "com.apple.keylayout.UnicodeHexInput"
declare-option -hidden str im_selector_path "/usr/local/bin/im-select"

define-command -docstring 'select IM' -params 1 im-select %{
    nop %sh{
        $kak_opt_im_selector_path $1
    }
}

hook buffer ModeChange .*:normal %{
    im-select "%opt{im_default_im}"
}
