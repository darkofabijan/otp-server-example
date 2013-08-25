# Sequence

Start it with `iex -S mix`


```Elixir
{:ok, pid} = :gen_server.start_link(Sequence.Server, 100, [])
:gen_server.call(pid, :next_number)
:gen_server.call(pid, :next_number)

:gen_server.call(pid, {:set_number, 1000})

:gen_server.cast(pid, {:increment_number, 500})

:sys.get_status pid
```

Naming a server

```Elixir
{:ok, pid} = :gen_server.start_link({:local, :seq}, Sequence.Server, 100, [])

:gen_server.call(:seq, :next_number)
sys.get_status(:seq)
```
