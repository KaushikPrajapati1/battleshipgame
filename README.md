
# A Install git
 You need to install Git and make sure it’s available in your terminal's PATH.

For Linux (Debian/Ubuntu):
sudo apt update
sudo apt install git

For macOS (with Homebrew):
brew install git

For Windows:
Download Git from https://git-scm.com/
Install it and make sure the "Git from the command line and also from 3rd-party software" option is selected.
Restart your terminal or IDE after installing.

# B Install Elixir

https://elixir-lang.org/install.html

For Window - https://elixir-lang.org/install.html#windows

Using Windows installers:
1) Download and run the Erlang installer  (https://www.erlang.org/downloads.html)  click on download windows installer button
2) Download and run the Elixir installer compatible with your Erlang/OTP version:(https://github.com/elixir-lang/elixir/releases/download/v1.18.4/elixir-otp-27.exe )
Elixir 1.18.4 on Erlang 27

3) If you are using PowerShell (Windows), run:

curl.exe -fsSO https://elixir-lang.org/install.bat
.\install.bat elixir@1.18.4 otp@27.3.4
$installs_dir = "$env:USERPROFILE\.elixir-install\installs"
$env:PATH = "$installs_dir\otp\27.3.4\bin;$env:PATH"
$env:PATH = "$installs_dir\elixir\1.18.4-otp-27\bin;$env:PATH"
iex.bat

<img width="1102" height="635" alt="image" src="https://github.com/user-attachments/assets/c30ff55b-9789-444a-89ae-52a4e1f64cd7" />

**For Mac - https://elixir-lang.org/install.html#macos**

If you are using bash (macOS/Ubuntu/Windows), run:

curl -fsSO https://elixir-lang.org/install.sh
sh install.sh elixir@1.18.4 otp@27.3.4
installs_dir=$HOME/.elixir-install/installs
export PATH=$installs_dir/otp/27.3.4/bin:$PATH
export PATH=$installs_dir/elixir/1.18.4-otp-27/bin:$PATH
iex


  # C Restart PC. 
  Open command-prompt. (type cmd in Run window)
  type below in cmd
  mix archive.install hex phx_new 
  
  Mix deps.get
  
# Battleshipgame

 download or clone from github.
 
 
To start your Phoenix server:

open command-prompt. (type cmd in Run Window)
**Optional :**  Run `mix setup` to install and setup dependencies
**Required :**  Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`]((http://localhost:4000/Battleship)) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

* Official website: https://www.phoenixframework.org/
* Guides: https://hexdocs.pm/phoenix/overview.html
* Docs: https://hexdocs.pm/phoenix
* Forum: https://elixirforum.com/c/phoenix-forum
* Source: https://github.com/phoenixframework/phoenix
