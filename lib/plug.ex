defmodule Venyou.Plug do

  def init(options) do
    # initialize options
    options
  end

  def call(conn, _opts) do
    AppRouter.call(conn, AppRouter.init([]))
  end
end
