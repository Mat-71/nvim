vim.keymap.set("n", "<leader>gs", vim.cmd.Git);

vim.cmd([[
    function! FugitiveGitPath(path) abort
        let s = substitute(a:path, '^/mnt/\(\a\)/', '\1:/', '')
        let s = substitute(s, '^/tmp/', '\\\\wsl.localhost/Ubuntu/tmp/', '')
        return s
    endfunction

    function! FugitiveVimPath(path) abort
        return substitute(a:path, '^\(\a\):/', '/mnt/\1/', '')
    endfunction
]])
