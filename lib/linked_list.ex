defmodule LinkedList do
  @opaque t :: tuple()

  @doc """
  Construct a new LinkedList
  """
  @spec new() :: t
  def new() do
    []
  end

  @doc """
  Push an item onto a LinkedList
  """
  @spec push(t, any()) :: t
  def push(list, elem) do
    list ++ [elem]
  end

  @doc """
  Counts the number of elements in a LinkedList
  """
  @spec count(t) :: non_neg_integer()
  def count(list) do
    length(list)
  end

  @doc """
  Determine if a LinkedList is empty
  """
  @spec empty?(t) :: boolean()
  def empty?(list) do
    # Your implementation here...
    length(list) == 0
  end

  @doc """
  Get the value of a head of the LinkedList
  """
  @spec peek(t :: list()) :: {:ok, any()} | {:error, :empty_list}
  def peek([_ | _] = list) do
    [elem | _] = Enum.reverse(list)
    {:ok, elem}
  end

  def peek([]), do: {:error, :empty_list}

  @doc """
  Get tail of a LinkedList
  """
  @spec tail(t :: list()) :: {:ok, t} | {:error, :empty_list}
  def tail([_ | tail]) do
    {:ok, tail}
  end

  def tail([]), do: {:error, :empty_list}

  @doc """
  Remove the head from a LinkedList
  """
  def pop([]), do: {:error, :empty_list}

  def pop(list) do
    [t | rest] = Enum.reverse(list)
    {:ok, t, Enum.reverse(rest)}
  end

  @doc """
  Construct a LinkedList from a stdlib List
  """
  @spec from_list(list()) :: t
  def from_list(list) do
    list
  end

  @doc """
  Construct a stdlib List LinkedList from a LinkedList
  """
  @spec to_list(t) :: list()
  def to_list(list) do
    list
  end

  @doc """
  Reverse a LinkedList
  """
  @spec reverse(t) :: t
  def reverse(list) do
    Enum.reverse(list)
  end
end
