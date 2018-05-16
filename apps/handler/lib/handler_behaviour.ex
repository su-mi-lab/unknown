defmodule HandlerBehaviour do

  @moduledoc false

  @callback run(Map.t) :: Article.t

end
