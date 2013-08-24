# Sequence

Start it with `iex -S mix`


<code><pre>
{:ok, pid} = :gen_server.start_link(Sequence.Server, 100, [])
:gen_server.call(pid, :next_number)
:gen_server.call(pid, :next_number)

:gen_server.call(pid, {:set_number, 1000})

:gen_server.cast(pid, {:increment_number, 500})
</pre></code>
