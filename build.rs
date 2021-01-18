use std::{fs, iter::FromIterator};
use structopt::clap::Shell;
include!("src/cli.rs");

fn main() {
    let mut app = Opt::clap();
    let out_dir = &["target", "completions"];
    let out_dir: PathBuf = PathBuf::from_iter(out_dir.iter());
    let out_dir = out_dir.as_path();

    fs::create_dir_all(out_dir).unwrap();

    // Generate completions for all shells available in `clap`.
    app.gen_completions("git-cz", Shell::Bash, out_dir);
    app.gen_completions("git-cz", Shell::Fish, out_dir);
    app.gen_completions("git-cz", Shell::Zsh, out_dir);
    app.gen_completions("git-cz", Shell::Elvish, out_dir);
    app.gen_completions("git-cz", Shell::PowerShell, out_dir);
}
