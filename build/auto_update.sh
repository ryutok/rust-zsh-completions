#!/usr/bin/env bash

script_dir=$(cd $(dirname $0); pwd)
src_dir="${script_dir}/../src"

rustup_cur_ver=`tail -n1 ${script_dir}/auto_update.log | cut -d' ' -f8`
cargo_cur_ver=`tail -n1 ${script_dir}/auto_update.log | cut -d' ' -f10`

rustup_new_ver=`rustup --version | cut -d' ' -f2`
cargo_new_ver=`cargo --version | cut -d' ' -f2`

cargo_url="https://raw.githubusercontent.com/rust-lang/cargo/rust-${cargo_new_ver}/src/etc/_cargo"

if [[ ${rustup_cur_ver} != ${rustup_new_ver} ]]; then
  rustup completions zsh > ${src_dir}/_rustup
  curl ${cargo_url} > ${src_dir}/_cargo
fi
