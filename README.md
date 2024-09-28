# skel

    sudo dnf install \
        ack \
        ctags \
        curl \
        dejavu-sans-mono-fonts \
        git \
        screen \
        urlview \
        vim-enhanced \
        xsel \
        xterm \
        zsh

<!---->

    sudo apt install \
        ack-grep \
        universal-ctags \
        curl \
        git \
        screen \
        urlview \
        vim-nox \
        xsel \
        xterm \
        zsh

---

    git clone --recurse-submodules \
        https://github.com/dmitrivereshchagin/skel.git \
        ~/.skel

<!---->

    rm -f ~/.profile

<!---->

    ln -s \
        .skel/.Xresources \
        .skel/.ackrc \
        .skel/.curlrc \
        .skel/.cvsignore \
        .skel/.gitconfig \
        .skel/.profile \
        .skel/.screenrc \
        .skel/.vim \
        .skel/.zprofile \
        .skel/.zshrc.local \
        .skel/.zshrc.pre \
        .skel/bin \
        ~

<!---->

    git clone \
        https://github.com/grml/grml-etc-core.git \
        ~/src/github.com/grml/grml-etc-core

<!---->

    ln -s \
        src/github.com/grml/grml-etc-core/etc/zsh/zshrc \
        ~/.zshrc

<!---->

    chsh -s /bin/zsh

---

    gsettings set org.gnome.desktop.input-sources \
        xkb-options "['ctrl:nocaps']"

<!---->

    gsettings set org.gnome.desktop.interface \
        gtk-key-theme "'Emacs'"

<!---->

    gsettings set org.gnome.desktop.peripherals.pointingstick \
        scroll-method "'none'"

---

    git clone --branch=v0.14.0 \
        https://github.com/asdf-vm/asdf.git \
        ~/.asdf

<!---->

    exec zsh

<!---->

    sudo dnf install \
        gcc \
        gcc-c++ \
        ncurses-devel \
        openssl-devel \
        wxGTK-devel \
        libxslt \
        perl-File-Copy \
        make

<!---->

    sudo apt install \
        gcc \
        g++ \
        libncurses-dev \
        libssl-dev \
        libwxgtk3.2-dev \
        libwxgtk-webview3.2-dev \
        xsltproc \
        make

<!---->

    asdf plugin add erlang &&
        asdf install erlang 25.3.2.12 &&
        asdf global erlang 25.3.2.12

<!---->

    asdf plugin add rebar &&
        asdf install rebar 3.23.0 &&
        asdf global rebar 3.23.0
