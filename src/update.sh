#!/usr/bin/env bash

home_dir="`pwd`/.."
src_dir="${home_dir}/src"

rustup_cur_ver=`tail -n1 ${home_dir}/auto_update.log | cut -d' ' -f8`
cargo_cur_ver=`tail -n1 ${home_dir}/auto_update.log | cut -d' ' -f10`

rustup_new_ver=`rustup --version | cut -d' ' -f2`
cargo_new_ver=`cargo --version | cut -d' ' -f2`

if [ ${rustup_cur_ver} != ${rustup_new_ver} ]; then
  cargo_url="https://raw.githubusercontent.com/rust-lang/cargo/rust-${cargo_new_ver}/src/etc/_cargo"

  # rustup
  rustup completions zsh > ${src_dir}/_rustup

  # cargo
  curl ${cargo_url} > ${src_dir}/_cargo
fi

echo "[`date -Ru`] rustup: ${rustup_new_ver} cargo: ${cargo_new_ver}" >> ${home_dir}/auto_update.log
