#!/usr/bin/env bash
# filename: 	bash_docker.sh
#
# function:		operates docker for javagruppen jekyll builder
# Argumements:	'start'  - Starting jekyll as docker.
#			        		a) Will make sure that docker starts from
#			        		   the directory where this project is located in
#	                        b) Will give docker image a name
#			        		c) Will make sure docker is not already running. (Stops running version)
#			        		d) Will run detach - (background) - remove --detach to see log
# 				'stop'   - stops server
# 				'run'    - run server direct in this shell
# 				'log'    - see and follow log
# 				'open'   - browse site on localhost
#               <default> - 'run'
#
# precondion:
#				Install docker on workstation before running
#				See: https://docs.docker.com/install/
#
# usage:		Run script form bash (stay in any directory)
#
#			1)	Starting jekyll builder
#				./bash_docker.sh start
#
#			2)  Stopping docker again
#				./bash_docker.sh stop
#
#			3)  running server in process
#				./bash_docker.sh run
#
#			4)  See log
#				./bash_docker.sh log
#
#			5)  Browse on localhost
#				./bash_docker.sh open
#
# purpose:		The purpose of this script is to document how to make
# 				jekyll builder run in a docker on your development workstation
# ---------------------------------------------------------------------------
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd $DIR

# ---------------------------------------------------------------------------
# function:     run
# description:  Causes jekyll server to run on port 4000
# usage:
#           bash_docker.sh run
#
function do_run() {
  docker run -p 4000:4000 -v $(pwd):/site bretfisher/jekyll-serve
}

# ---------------------------------------------------------------------------
function do_stop() {
  echo "Stopping + removing container (will write error when container missing...)"
  docker container stop javagruppen_jekyll
  docker container rm javagruppen_jekyll
}

# ---------------------------------------------------------------------------
function do_start() {
  do_stop
  echo "running jekyll on source in " $DIR
  docker run --name javagruppen_jekyll \
    --detach \
    -p 4000:4000 \
    -v $(pwd):/site \
    bretfisher/jekyll-serve
  #
}

# ---------------------------------------------------------------------------
# function:     clean
# description:  jekyll server re-generate the ruby dependencies
# background:   When major components are updated (in example jekyll it self)
#               then dependencies probably also needs update
#
# purpose:      When jekyll will not run try to regenerate dependencies
#               and check that helped.
# usage:
#           bash_docker.sh clean
#
function do_clean() {
  rm -v Gemfile.lock
}

# ---------------------------------------------------------------------------

function do_log() {
  echo "showing log for, ctrl C to stop " $DIR
  docker container logs --follow javagruppen_jekyll
}

# ---------------------------------------------------------------------------
function do_open() {
  echo "on macos default browser will show resulting page"
  open http://localhost:4000
}

# execute command
# ===============
command=$1
if [ -z "$command" ]; then
  command="run"
fi
do_$command
#
