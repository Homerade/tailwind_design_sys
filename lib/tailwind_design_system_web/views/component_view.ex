defmodule TailwindDesignSystemWeb.ComponentView do
  use TailwindDesignSystemWeb, :view

  def displayHTML(value) do
    {:safe, data} = raw(value)
    data
  end
end
