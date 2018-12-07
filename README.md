# Rust completion for zsh

`rustup`, `cargo`, and `rustc` completion for [zsh](http://www.zsh.org).


## Date source

| Service | Source | License |
|--------:|:-------|:--------|
| [rustup](https://github.com/rust-lang/rustup.rs) | `rustup completions zsh` | [MIT](https://github.com/rust-lang/rustup.rs/blob/master/LICENSE-MIT) & [Apache](https://github.com/rust-lang/rustup.rs/blob/master/LICENSE-APACHE) |
| [cargo](https://github.com/rust-lang/cargo) | [\_cargo](https://github.com/rust-lang/cargo/blob/master/src/etc/_cargo) | [MIT](https://github.com/rust-lang/cargo/blob/master/LICENSE-MIT) & [Apache](https://github.com/rust-lang/cargo/blob/master/LICENSE-APACHE) |
| [rustc](https://github.com/rust-lang/rust/tree/master/src/rustc) | [\_rustc](https://github.com/rust-lang/zsh-config/blob/master/_rust) | [MIT](https://github.com/rust-lang/zsh-config/blob/master/LICENSE-MIT) & [Apache](https://github.com/rust-lang/zsh-config/blob/master/LICENSE-APACHE) |


## Installation
### Manually
Download [source files](https://github.com/ryutok/rust-zsh-completions/releases) somewhere you want to install, and add the following lines in your `.zshrc`.

```
export fpath=(path/to/rust-zsh-completions/src $fpath)
autoload -U compinit && compinit
```

### Using zplug
If you use [zplug](https://github.com/zplug/zplug), add the following line to your `.zshrc`.

```
zplug 'ryutok/rust-zsh-completions'
```


## License
[MIT](https://github.com/ryutok/rust-zsh-completions/blob/master/LICENSE)


## Author
[ryutok](https://github.com/ryutok)
