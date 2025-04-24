if status is-interactive
# Commands to run in interactive sessions can go here
end

# Tide config settings
set tide_left_prompt_items context pwd character
set tide_right_prompt_items status cmd_duration jobs direnv node python rustc java php pulumi ruby go gcloud kubectl distrobox toolbox terraform aws nix_shell crystal elixir zig
set tide_context_color_ssh 73C0E2
set tide_context_color_root EA4649

# Abbreviations
abbr -a l ls -la
abbr -a --position anywhere --set-cursor L "% | less"

abbr -a --position anywhere kgnims kubectl get nimservices.apps.nvidia.com
abbr -a --position anywhere kgnimsw kubectl get nimservices.apps.nvidia.com --watch
abbr -a --position anywhere kdnims kubectl describe nimservices.apps.nvidia.com
abbr -a --position anywhere kdelnims kubectl delete nimservices.apps.nvidia.com

abbr -a --position anywhere kgnimc kubectl get nimcaches.apps.nvidia.com
abbr -a --position anywhere kgnimcw kubectl get nimcaches.apps.nvidia.com --watch
abbr -a --position anywhere kdnimc kubectl describe nimcaches.apps.nvidia.com
abbr -a --position anywhere kdelnimc kubectl delete nimcaches.apps.nvidia.com

abbr -a --position anywhere kgjo kubectl get jobs
abbr -a --position anywhere kgjow kubectl get jobs --watch
abbr -a --position anywhere kdjo kubectl describe jobs
abbr -a --position anywhere kdeljo kubectl delete jobs

abbr -a --set-cursor kpfn kubectl port-forward --namespace=ingress-nginx --address 0.0.0.0 service/ingress-nginx-controller %:443

# Created by `pipx` on 2024-11-05 17:16:41
set PATH $PATH /Users/James.Fairhurst@computacenter.com/.local/bin

# Created by `pipx` on 2024-11-06 13:01:42
set PATH $PATH /home/jamie/.local/bin
set PATH $PATH $HOME/.local/bin
set PATH $PATH $HOME/ngc-cli
set PATH $PATH $HOME/.runai/bin

if type -q zoxide
zoxide init fish | source
end
if type -q pyenv
pyenv init - fish | source
end
if type -q thefuck
thefuck --alias | source
end
