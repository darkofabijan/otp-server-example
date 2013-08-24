# Sequence

Start it with `iex -S mix`


<code><pre>
{:ok, pid} = :gen_server.start_link(Sequence.Server, 100, [])
:gen_server.call(pid, :next_nubmer)
:gen_server.call(pid, :next_nubmer)
</pre></code>
