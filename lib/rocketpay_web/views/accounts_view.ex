defmodule RocketpayWeb.AccountsView do
  alias Rocketpay.Account

  def render("update.json", %{account: %Account{id: id, balance: balance}}) do
    %{
      message: "YEAAAAH",
      account: %{
        id: id,
        balance: balance
      }
    }
  end
end
