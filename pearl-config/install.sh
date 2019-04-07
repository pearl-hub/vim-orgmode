
function post_install(){
    local pluginname=vim-orgmode
    local giturl=https://github.com/jceb/vim-orgmode.git

    info "Installing or updating the $pluginname git repository..."
    local plugin_root="${PEARL_PKGVARDIR}/plugins/pack/pearl/start"
    mkdir -p "$plugin_root"
    install_or_update_git_repo $giturl "$plugin_root/$pluginname" master
    [[ -e "$plugin_root/$pluginname/doc" ]] && \
        vim -c "helptags $plugin_root/$pluginname/doc" -c q

    local pluginname=utl
    local giturl=https://github.com/vim-scripts/utl.vim.git

    info "Installing or updating the $pluginname git repository..."
    local plugin_root="${PEARL_PKGVARDIR}/plugins/pack/pearl/start"
    mkdir -p "$plugin_root"
    install_or_update_git_repo $giturl "$plugin_root/$pluginname" master
    [[ -e "$plugin_root/$pluginname/doc" ]] && \
        vim -c "helptags $plugin_root/$pluginname/doc" -c q

    return 0
}

function post_update(){
    post_install
}

function pre_remove(){
    rm -rf ${PEARL_PKGVARDIR}/plugins
    return 0
}
