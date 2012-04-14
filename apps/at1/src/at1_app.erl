%%% @doc {{appid}} application module
%%%
%%% @end

-module ({{appid}}_app).
-author ('bourinov@gmail.com').

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    {{appid}}_sup:start_link().

stop(_State) ->
    ok.