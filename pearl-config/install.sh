
function post_install(){
    local pluginname=vim-orgmode
    local giturl=https://github.com/jceb/vim-orgmode.git

    info "Installing or updating the $pluginname git repository..."
    mkdir -p "${PEARL_PKGVARDIR}/plugins/pack/pearl/start"
    install_or_update_git_repo $giturl "${PEARL_PKGVARDIR}/plugins/pack/pearl/start/$pluginname" master

    local pluginname=utl
    local giturl=https://github.com/vim-scripts/utl.vim.git

    info "Installing or updating the $pluginname git repository..."
    mkdir -p "${PEARL_PKGVARDIR}/plugins/pack/pearl/start"
    install_or_update_git_repo $giturl "${PEARL_PKGVARDIR}/plugins/pack/pearl/start/$pluginname" master

    return 0
}

function post_update(){
    post_install
}

function pre_remove(){
    rm -rf ${PEARL_PKGVARDIR}/vim-orgmode
    rm -rf ${PEARL_PKGVARDIR}/utl
    return 0
}
