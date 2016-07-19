# grc overides for ls
#   Made possible through contributions from generous benefactors like
#   `brew install coreutils`
if $(gls &>/dev/null)
then
  alias ls="gls -F --color"
  alias l="gls -lAh --color"
  alias ll="gls -l --color"
  alias la='gls -A --color'
fi
alias elixir='
  docker run \
    -it \
    --rm \
    -v "$PWD":"$PWD" \
    -w "$PWD" \
    blankenshipz/elixir-phoenix \
    elixir'

alias iex='
  docker run \
    -it \
    --rm \
    -v "$PWD":"$PWD" \
    -w "$PWD" \
    blankenshipz/elixir-phoenix'

alias mix='
  docker run \
    -it \
    --rm \
    -v "$PWD":"$PWD" \
    -w "$PWD" \
    blankenshipz/elixir-phoenix \
    mix'
alias octave='docker run -it --rm -v $(pwd):/host -w "/host" simexp/octave:3.8.1'
alias psql='
  docker run                                                       \
     -it                                                           \
     --rm                                                          \
     -v /var/run/docker.sock:/var/run/docker.sock                  \
     -v /tmp                                                       \
     -v $(pwd):$(pwd)                                              \
     -w $(pwd)                                                     \
     -e "EDITOR=docker run          \
            -it                     \
            --rm                    \
            --volumes-from=psql     \
            -w $(pwd)               \
            haron/vim"                                             \
     --name psql                                                   \
     psql'
alias nibdev='
  docker run \
    -it \
    --rm \
    -v $(pwd):$(pwd) \
    -w $(pwd) \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -e "DOCKER_HOST_URL=$DOCKER_HOST" \
    nibdev:latest'
alias psqld='psql -h localhost -p 5432 -U postgres'
alias nib='
  docker run \
    -it \
    --rm \
    -v $(pwd):$(pwd) \
    -w $(pwd) \
    -v $HOME/.docker:/root/.docker:ro \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -e "DOCKER_HOST_URL=$DOCKER_HOST" \
    technekes/nib:latest'
alias rust-static-release='
  docker run \
    -it \
    --rm \
    -v $PWD:$PWD \
    -w $PWD \
    liuchong/rustup:musl \
    sh -c "cargo build --release && chown -R $(id -u):$(id -g) target"'
