
# Nvim

> this is my personal neovim configuration

## Install

### prerequisite

- [neovim]()
- [nodejs](https://nodejs.org/)
- [cmake]()
- [fzf](https://github.com/junegunn/fzf)
- [ripgrep](https://github.com/BurntSushi/ripgrep)
- [fd](https://github.com/sharkdp/fd)
- c compiler: any c compiler like gcc,clang,g++

### setup

#### 1. prerequisites

first install all required dependecies for the best experience

##### linux

- prerequisites install command in linux using apt. (this command only works for debian based distro)

    ```bash
        sudo apt install cmake build-essential fd-find fzf ripgrep
    ```

- install nodejs for tree-sitter and markdown-preview

    [Nvm Official Repo](https://github.com/nvm-sh/nvm?tab=readme-ov-file#installing-and-updating)

- (optional) also install lazygit if you want to use it in neovim with (<leader\>g)

    [Lazygit Official Repo](https://github.com/jesseduffield/lazygit?tab=readme-ov-file#ubuntu)

##### windows

- prerequisites install command in windows using winget

    ```bash
        winget install cmake llvm.llvm fzf sharkdp.fd lazygit burntsushi.ripgrep.msvc git.git nodejs
    ```

#### 2. clone config

##### linux

```bash
    git clone https://github.com/shadinmhd/nvim ~/.config/nvim
```

##### windows

```bash
    cd $env:LOCALAPPDATA
    git clone https://github.com/shadinmhd/nvim
```

#### 3. start neovim

```bash
    nvim
```

