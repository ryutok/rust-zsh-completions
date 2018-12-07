# Rust completion for zsh

`rustup`, `cargo`, and `rustc` completion for [zsh](http://www.zsh.org).


## Date source

| Service | Source |
|--------:|:-------|
| [rustup](https://github.com/rust-lang/rustup.rs) | `rustup completions zsh` |
| [cargo](https://github.com/rust-lang/cargo) | [\_cargo](https://raw.githubusercontent.com/rust-lang/cargo/master/src/etc/_cargo) |
| [rustc](https://github.com/rust-lang/rust/tree/master/src/rustc) | [\_rustc](https://raw.githubusercontent.com/rust-lang/zsh-config/master/_rust) |


## Installation
### Manually
Download [source files](https://github.com/ryutok/rust-zsh-completions/archive/master.zip) somewhere you want to install, and add the following lines in your `.zshrc`.

```
export fpath=(path/to/rust-zsh-completions $fpath)
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
