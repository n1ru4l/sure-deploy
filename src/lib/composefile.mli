open Core

type context = string String.Map.t
type service_spec = {
  name: Swarm_types.service_name;
  image: string;
}

val load : string -> context -> service_spec list Or_error.t
val environment : unit -> context
