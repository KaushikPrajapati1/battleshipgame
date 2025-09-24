# Install Elixir
If you are using bash (macOS/Ubuntu/Windows), run:

curl -fsSO https://elixir-lang.org/install.sh
sh install.sh elixir@1.18.4 otp@27.3.4
installs_dir=$HOME/.elixir-install/installs
export PATH=$installs_dir/otp/27.3.4/bin:$PATH
export PATH=$installs_dir/elixir/1.18.4-otp-27/bin:$PATH
iex
If you are using PowerShell (Windows), run:

curl.exe -fsSO https://elixir-lang.org/install.bat
.\install.bat elixir@1.18.4 otp@27.3.4
$installs_dir = "$env:USERPROFILE\.elixir-install\installs"
$env:PATH = "$installs_dir\otp\27.3.4\bin;$env:PATH"
$env:PATH = "$installs_dir\elixir\1.18.4-otp-27\bin;$env:PATH"
iex.bat
<img width="1102" height="635" alt="image" src="https://github.com/user-attachments/assets/c30ff55b-9789-444a-89ae-52a4e1f64cd7" />
  
# Battleshipgame

To start your Phoenix server:

* Run `mix setup` to install and setup dependencies
* Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

* Official website: https://www.phoenixframework.org/
* Guides: https://hexdocs.pm/phoenix/overview.html
* Docs: https://hexdocs.pm/phoenix
* Forum: https://elixirforum.com/c/phoenix-forum
* Source: https://github.com/phoenixframework/phoenix
