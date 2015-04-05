-module(naive_tcp).
-compile(export_all).
 
start_server(8091) ->
Pid = spawn_link(fun() ->
{ok, Listen} = gen_tcp:listen(8091, [binary, {active, false}]),
spawn(fun() -> acceptor(Listen) end),
timer:sleep(infinity)
end),
{ok, Pid}.
 
acceptor(ListenSocket) ->
{ok, Socket} = gen_tcp:accept(ListenSocket),
spawn(fun() -> acceptor(ListenSocket) end),
handle(Socket).
 
%% Echoing back whatever was obtained
handle(Socket) ->
inet:setopts(Socket, [{active, once}]),
receive
{tcp, Socket, <<"quit", _/binary>>} ->
gen_tcp:close(Socket);
{tcp, Socket, Msg} ->
gen_tcp:send(Socket, Msg),
handle(Socket)
end.