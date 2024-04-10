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
        .skel/.screen \
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
