-module(gserver).
-behaviour(gen_server).

%%====================================================================
%% API functions
%%====================================================================
-export([start_link/0]).

-export([init/1, handle_call/3, handle_cast/2, handle_info/2,
         terminate/2, code_change/3]).

%%--------------------------------------------------------------------
%% Definitions
%%--------------------------------------------------------------------

-define(SERVER, ?MODULE).

%%%===================================================================
%%% INTERFACE API
%%%===================================================================
start_link() ->
  gen_server:start_link({local, ?SERVER}, ?MODULE, [], [{debug,[trace]}]).

%%====================================================================
%% gen_server callbacks
%%====================================================================
init([]) ->
  {ok, []}.

handle_cast(_Msg, State) ->
  {noreply, State}.

handle_call(_Msg, _From, State) ->
  {noreply, State}.

handle_info(_Info, State) ->
  {noreply, State}.

%% @private
terminate(_Reason, _State) ->
  ok.

%% @private
code_change(_OldVsn, State, _Extra) ->
  {ok, State}.
