# My Dotfiles

これは、私個人の開発環境設定ファイル（dotfiles）を管理するためのリポジトリです。
zshやその他のツールの設定をここに集約し、どのPCでも同じ環境を素早く再現できるようにしています。

![(https://github.com/RukuToshima/dotfiles/blob/main/images/image.png?raw=true)]

---

## 💻 特徴

* **zsh:** oh-my-zsh と Powerlevel10k をベースにした快適なシェル環境
* **自動化:** `install.sh` スクリプトによる簡単なセットアップ

---

## 🚀 使い方 (新しいPCでのセットアップ方法)

1.  まず、このリポジトリをホームディレクトリにクローンします。
    ```bash
    git clone [https://github.com/RukuToshima/dotfiles.git](https://github.com/RukuToshima/dotfiles.git) ~/dotfiles
    ```

2.  クローンしたディレクトリに移動し、インストールスクリプトを実行します。
    ```bash
    cd ~/dotfiles
    ./install.sh
    ```

これだけで、必要な設定ファイルのシンボリックリンクが自動的に作成されます。

---

## 📁 管理しているファイル

* `.zshrc` - Zshのメイン設定ファイル

*(今後、管理ファイルが増えたらここにも追記していくと分かりやすいです)*