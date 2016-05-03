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

alias octave='docker run -it --rm -v $(pwd):/host -w "/host" simexp/octave:3.8.1'
alias nib='
  docker run \
    -it \
    --rm \
    -v $(pwd):$(pwd) \
    -w $(pwd)\
    -v ~/.ssh/id_dsa:/root/.ssh/id_rsa:ro \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -e "DOCKER_HOST_URL=$DOCKER_HOST" \
    technekes/nib'
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
