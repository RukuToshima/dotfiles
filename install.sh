#!/bin/bash
# =================================================================
# dotfiles setup script
# =================================================================

# このスクリプト自体の場所を基準に、dotfilesディレクトリの場所を特定
DOTFILES_DIR=$(cd $(dirname $0); pwd)

# --- ここから下に、シンボリックリンクを貼りたいファイル名を追加していく ---
files_to_link=(
  "zshrc"
  # 今後、管理したいファイルが増えたら、ここに追記する
  # "gitconfig"
  # "vimrc"
)
# --- ファイルリストはここまで ---


echo "■■■ Start dotfiles setup ■■■"
echo ""

# files_to_link 配列の中身を一つずつ処理するループ
for file in "${files_to_link[@]}"; do
  # 元ファイルのパス (dotfilesリポジトリ内)
  source_file="$DOTFILES_DIR/$file"
  # リンク先のパス (ホームディレクトリ)
  dest_file="$HOME/.$file"

  # リンク先に既にファイルやリンクが存在するかチェック
  if [ -e "$dest_file" ]; then
    # 存在する場合、それがシンボリックリンクで、かつ正しい場所を指しているかチェック
    if [ -L "$dest_file" ] && [ "$(readlink "$dest_file")" = "$source_file" ]; then
      echo "✔ Symlink for .$file already exists and is correct."
    else
      # 正しくないリンクや、ファイルが存在する場合はバックアップを作成
      echo "⚠️ Backing up existing .$file to .$file.bak"
      mv "$dest_file" "$dest_file.bak"
      # 新しくシンボリックリンクを作成
      echo "Creating new symlink for .$file"
      ln -s "$source_file" "$dest_file"
    fi
  else
    # リンク先に何も存在しない場合は、そのままシンボリックリンクを作成
    echo "Creating symlink for .$file"
    ln -s "$source_file" "$dest_file"
  fi
done

echo ""
echo "■■■ All tasks completed! ■■■"