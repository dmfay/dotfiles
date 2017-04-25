async_start_worker docker_settings -n

on_completion() {
  # eval stdout of command
  eval $3
}

async_register_callback docker_settings on_completion

async_job docker_settings docker-machine env default
