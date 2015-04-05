-module(hello_socket_worker_sup).

-behaviour(supervisor).

%% API

-export([start_link/0, 
	 start_child/0]).

%% supervisor callbacks

-export([init/1]).

-define(SERVER, ?MODULE).

-define(PORT, 12800).

%% API

start_link() ->
    supervisor:start_link({local, ?SERVER}, ?MODULE, [?PORT]).

start_child() ->
    supervisor:start_child(?SERVER, []).

%% supervisor callbacks

init([Port]) ->
    {ok, LSock} = gen_tcp:listen(Port, [{active, false}]),
    WorkerSpec = { hello_socket_worker, 
		   { hello_socket_worker, start_link, [LSock]},
		   temporary, 
		   brutal_kill, 
		   worker, 
		   [hello_socket_worker]},
    Children = [WorkerSpec],
    RestartStrategy = {simple_one_for_one, 0, 1},
    spawn_link(fun() ->		       
		       [start_child() || _ <- lists:seq(1, 5)]
	       end),
    {ok, {RestartStrategy, Children}}.