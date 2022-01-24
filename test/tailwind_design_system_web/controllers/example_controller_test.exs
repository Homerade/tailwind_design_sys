defmodule TailwindDesignSystemWeb.ExampleControllerTest do
  use TailwindDesignSystemWeb.ConnCase

  import TailwindDesignSystem.ExamplesFixtures

  @create_attrs %{name: "some name"}
  @update_attrs %{name: "some updated name"}
  @invalid_attrs %{name: nil}

  describe "index" do
    test "lists all examples", %{conn: conn} do
      conn = get(conn, Routes.example_path(conn, :index))
      assert html_response(conn, 200) =~ "Listing Examples"
    end
  end

  describe "new example" do
    test "renders form", %{conn: conn} do
      conn = get(conn, Routes.example_path(conn, :new))
      assert html_response(conn, 200) =~ "New Example"
    end
  end

  describe "create example" do
    test "redirects to show when data is valid", %{conn: conn} do
      conn = post(conn, Routes.example_path(conn, :create), example: @create_attrs)

      assert %{id: id} = redirected_params(conn)
      assert redirected_to(conn) == Routes.example_path(conn, :show, id)

      conn = get(conn, Routes.example_path(conn, :show, id))
      assert html_response(conn, 200) =~ "Show Example"
    end

    test "renders errors when data is invalid", %{conn: conn} do
      conn = post(conn, Routes.example_path(conn, :create), example: @invalid_attrs)
      assert html_response(conn, 200) =~ "New Example"
    end
  end

  describe "edit example" do
    setup [:create_example]

    test "renders form for editing chosen example", %{conn: conn, example: example} do
      conn = get(conn, Routes.example_path(conn, :edit, example))
      assert html_response(conn, 200) =~ "Edit Example"
    end
  end

  describe "update example" do
    setup [:create_example]

    test "redirects when data is valid", %{conn: conn, example: example} do
      conn = put(conn, Routes.example_path(conn, :update, example), example: @update_attrs)
      assert redirected_to(conn) == Routes.example_path(conn, :show, example)

      conn = get(conn, Routes.example_path(conn, :show, example))
      assert html_response(conn, 200) =~ "some updated name"
    end

    test "renders errors when data is invalid", %{conn: conn, example: example} do
      conn = put(conn, Routes.example_path(conn, :update, example), example: @invalid_attrs)
      assert html_response(conn, 200) =~ "Edit Example"
    end
  end

  describe "delete example" do
    setup [:create_example]

    test "deletes chosen example", %{conn: conn, example: example} do
      conn = delete(conn, Routes.example_path(conn, :delete, example))
      assert redirected_to(conn) == Routes.example_path(conn, :index)

      assert_error_sent 404, fn ->
        get(conn, Routes.example_path(conn, :show, example))
      end
    end
  end

  defp create_example(_) do
    example = example_fixture()
    %{example: example}
  end
end
